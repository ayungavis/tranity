#include <a_samp>
#include <h_colors>
#include <YSI\y_va>
#include <easydialog>
#include <sscanf2>

#define FURNITURE_LIST 1
#define FURNITURE_LIST_NONE 2
#define FURNITURE_LIST_SELECTED 3
#define FURNITURE_LIST_INFO 4
#define FURNITURE_LIST_RENAME 5
#define FURNITURE_RENAME_ERROR 6


stock DisplayFurnitureList(playerid)
{
	new string[2000];
	for(new i = 1; i < MAX_FURNITURE; i++)
	{
		if(FurnitureInfo[PlayerInfo[playerid][pHouseKey]][i][fOn])
		{
			format(msg, sizeof(msg), "(OBJ ID: %d) %d. %s\n",FurnitureInfo[PlayerInfo[playerid][pHouseKey]][i][fID], i, FurnitureInfo[PlayerInfo[playerid][pHouseKey]][i][fName]);
			strcat(string, msg);
		}
		else
		{
			format(msg, sizeof(msg), "%d. None\n", i);
			strcat(string, msg);
		}
	}
	SetIntVar(playerid, "OnFurniture", FURNITURE_LIST);
	ShowDialog(playerid, Show:<DisplayFurniture>, DIALOG_STYLE_LIST, "{00FF40}Furniture list{FFFFFF}:", string, "Select", "<<<");
	return 1;
}

stock HandleFurnitureDialog(playerid)
{
	new part = GetIntVar(playerid, "OnFurniture");
	switch(part)
	{
		case FURNITURE_LIST:
		{
			ShowDialog(playerid, Show:<FurnitureDialog>, DIALOG_STYLE_LIST, ""EMBED_LIGHTBLUE"Furniture dialog"EMBED_WHITE"", "Furniture list\nBuy furniture\nEdit furniture\nSell furniture", "Select", "Exit");
			RemoveVar(playerid, "OnFurniture");
		}
		case FURNITURE_LIST_NONE:
		{
			DisplayFurnitureList(playerid);
		}
		case FURNITURE_LIST_SELECTED:
		{
			DisplayFurnitureList(playerid);
		}
		case FURNITURE_LIST_INFO:
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_SELECTED);
			ShowDialog(playerid, Show:<DisplayFurniture3>, DIALOG_STYLE_LIST, "{00FF40}Furniture list{FFFFFF}:", "Information\nPosition\nSell\nRename", "Select", "<<<");
		}
		case FURNITURE_LIST_RENAME:
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_SELECTED);
			ShowDialog(playerid, Show:<DisplayFurniture3>, DIALOG_STYLE_LIST, "{00FF40}Furniture list{FFFFFF}:", "Information\nPosition\nSell\nRename", "Select", "<<<");
		}
		case FURNITURE_RENAME_ERROR:
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_RENAME);
			ShowDialog(playerid, Show:<DisplayFurniture4>, DIALOG_STYLE_INPUT, "Custom Naming:", "You are now editing the name of the furniture.\n     - Must be more than 3 characters.\n     - Must be less than 30 characters.\n     - Do not include any kind of symbols", "Select", "<<<");
		}
	}
	return 1;
}

stock DisplayFurnitureInfo(playerid, slot)
{
	format(msg, sizeof(msg), ""EMBED_YELLOW"%s"EMBED_WHITE"\nMarket price: "EMBED_GREEN"$%d"EMBED_WHITE"\nModel: %d\n", FurnitureInfo[PlayerInfo[playerid][pHouseKey]][slot][fName], FurnitureInfo[PlayerInfo[playerid][pHouseKey]][slot][fMarketPrice], FurnitureInfo[PlayerInfo[playerid][pHouseKey]][slot][fModel]);
	SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_INFO);
	ShowDialog(playerid, Show:<FurnitureHandling>, DIALOG_STYLE_MSGBOX, "{00FF40}Furniture List{FFFFFF}:", msg, "<<<", "");
}

Dialog:FurnitureDialog(playerid, response, listitem, inputtext[])
{
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				if(GetHouseFurnitures(PlayerInfo[playerid][pHouseKey]) == 0) return SCM(playerid, COLOR_YELLOWG, "You don't have any furnitures.");
				DisplayFurnitureList(playerid);
			}
			case 1:
			{
				ShowDialog(playerid, Show:<BuyFurnitureDialog>, DIALOG_STYLE_LIST, "{00FF40}Categories{FFFFFF}:", "Kitchen appliances\nBathroom appliances\nLiving room appliances\nBedroom appliances\nDecorations\nConstruction", "Select", "Close");
			}
		}
	}
	else return SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	return 1;
}


Dialog:DisplayFurniture(playerid, response, listitem, inputtext[])
{
	if(response) 
	{
		//Has to be +1 otherwise it'll be bugged, listitem starts from 0 and furnitures from 1.
		new slot = listitem+1;
		if(!FurnitureInfo[PlayerInfo[playerid][pHouseKey]][slot][fOn])
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_NONE);
			ShowDialog(playerid, Show:<FurnitureHandling>, DIALOG_STYLE_MSGBOX, "{00FF40}Furniture list{FFFFFF}:", "The furniture you have selected does not exists...", "<<<", "");
		}
		else
		{
			SetIntVar(playerid, "ChosenFurnitureSlot", slot);
			SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_SELECTED);
			ShowDialog(playerid, Show:<DisplayFurniture3>, DIALOG_STYLE_LIST, "{00FF40}Furniture list{FFFFFF}:", "Information\nPosition\nSell\nRename", "Select", "<<<");
		}
	}
	else return HandleFurnitureDialog(playerid);
	return 1;
}

Dialog:FurnitureHandling(playerid, response, listitem, inputtext[])
{
	if(response || !response)
	{
		HandleFurnitureDialog(playerid);
	}
	return 1;
}

Dialog:DisplayFurniture3(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new furnitureslot = GetIntVar(playerid, "ChosenFurnitureSlot");
		switch(listitem)
		{
			case 0:
			{
				DisplayFurnitureInfo(playerid, furnitureslot);
			}
			case 1:
			{
				if(GetIntVar(playerid, "EditingFurniture") == 1) return ServerMSG(playerid, "You are in middle of editing another furniture.");
				new houseid = PlayerInfo[playerid][pHouseKey];
				SetIntVar(playerid, "EditingFurniture", 1);
				EditDynamicObject(playerid, FurnitureInfo[houseid][furnitureslot][fObject]);
				format(msg, sizeof(msg), "You are now editing the {FFFF00}%s{FFFFFF}", FurnitureInfo[houseid][furnitureslot][fName]);
				ServerMSG(playerid, msg);
			}
			case 2:
			{
				new houseid = PlayerInfo[playerid][pHouseKey];
				new sellprice = FurnitureInfo[houseid][furnitureslot][fMarketPrice] / 2;
				format(msg, sizeof(msg), "You have just sold your %s and got 50 precent back, ${FFFF00}%d{FFFFFF}.", FurnitureInfo[houseid][furnitureslot][fName], sellprice);
				ServerMSG(playerid, msg);
				GiveCash(playerid, sellprice);
				DestroyDynamicObject(FurnitureInfo[houseid][furnitureslot][fObject]);
				OnPlayerSellFurniture(playerid, houseid, furnitureslot);
			}
			case 3:
			{
				SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_RENAME);
				ShowDialog(playerid, Show:<DisplayFurniture4>, DIALOG_STYLE_INPUT, "Custom Naming:", "You are now editing the name of the furniture.\n     - Must be more than 3 characters.\n     - Must be less than 30 characters.\n     - Do not include any kind of symbols", "Select", "<<<");
			}
		}
	}
	else
	{
		HandleFurnitureDialog(playerid);
	}
	return 1;
}

Dialog:DisplayFurniture4(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(StringHasSymbols(inputtext))
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_RENAME_ERROR);
			ShowDialog(playerid, Show:<FurnitureHandling>, DIALOG_STYLE_MSGBOX, "Custom Naming:", "You CAN'T use any symbols on the furniture name!", "<<<", "");
			return 1;
		}
		if(strlen(inputtext) > 30 || strlen(inputtext) < 3)
		{
			SetIntVar(playerid, "OnFurniture", FURNITURE_RENAME_ERROR);
			ShowDialog(playerid, Show:<FurnitureHandling>, DIALOG_STYLE_MSGBOX, "Custom Naming:", "You must have less than 30 characters and more than 3 characters!", "<<<", "");
			return 1;
		}
		format(FurnitureInfo[PlayerInfo[playerid][pHouseKey]][GetIntVar(playerid, "ChosenFurnitureSlot")][fName], 256, "%s", inputtext);
		format(msg, sizeof(msg), "You have named the furniture to: %s", inputtext);
		ServerMSG(playerid, msg);
		SetIntVar(playerid, "OnFurniture", FURNITURE_LIST_SELECTED);
		ShowDialog(playerid, Show:<DisplayFurniture3>, DIALOG_STYLE_LIST, "{00FF40}Furniture list{FFFFFF}:", "Information\nPosition\nSell\nRename", "Select", "<<<");
		return 1;
	}
	else
	{
		HandleFurnitureDialog(playerid);
	}
	return 1;
}

Dialog:HandleFurnitureBuying(playerid, response, listitem, inputtext[])
{
	new Float:x,Float:y,Float:z;
	if(response) 
	{
		GetPlayerPos(playerid, x, y ,z);
		new houseid = PlayerInfo[playerid][pHouseKey];
		if(GetHouseFurnitures(houseid) == MAX_FURNITURE-1) return SCM(playerid, COLOR_YELLOWG, "You've reached your maximum furnitures slot.");
		new i = GetNextFurnitureSlot(houseid);
		
		if(GetIntVar(playerid, "TypeBuying") == 1)
		{
			SetIntVar(playerid, "FurnitureModelBuying", KitchenInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", KitchenInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", KitchenInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 2)
		{
			SetIntVar(playerid, "FurnitureModelBuying", BathroomInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", BathroomInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", BathroomInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 3)
		{
			SetIntVar(playerid, "FurnitureModelBuying", ChairsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", ChairsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", ChairsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 4)
		{
			SetIntVar(playerid, "FurnitureModelBuying", TablesInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", TablesInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", TablesInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 5)
		{
			SetIntVar(playerid, "FurnitureModelBuying", SofasInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", SofasInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", SofasInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 6)
		{
			SetIntVar(playerid, "FurnitureModelBuying", DinnerTablesInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", DinnerTablesInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", DinnerTablesInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 7)
		{
			SetIntVar(playerid, "FurnitureModelBuying", TelevisionsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", TelevisionsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", TelevisionsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 8)
		{
			SetIntVar(playerid, "FurnitureModelBuying", GrugsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", GrugsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", GrugsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 9)
		{
			SetIntVar(playerid, "FurnitureModelBuying", PicturesInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", PicturesInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", PicturesInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 10)
		{
			SetIntVar(playerid, "FurnitureModelBuying", PlantsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", PlantsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", PlantsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 11)
		{
			SetIntVar(playerid, "FurnitureModelBuying", LampsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", LampsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", LampsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 12)
		{
			SetIntVar(playerid, "FurnitureModelBuying", RandomDecorations[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", RandomDecorations[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", RandomDecorations[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 13)
		{
			SetIntVar(playerid, "FurnitureModelBuying", RandomMess[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", RandomMess[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", RandomMess[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 14)
		{
			SetIntVar(playerid, "FurnitureModelBuying", BedsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", BedsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", BedsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 15)
		{
			SetIntVar(playerid, "FurnitureModelBuying", DressersInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", DressersInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", DressersInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 16)
		{
			SetIntVar(playerid, "FurnitureModelBuying", CabinetsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", CabinetsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", CabinetsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 17)
		{
			SetIntVar(playerid, "FurnitureModelBuying", WallsInfo[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", WallsInfo[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", WallsInfo[listitem][furnitureName]);
		}
		else if(GetIntVar(playerid, "TypeBuying") == 18)
		{
			SetIntVar(playerid, "FurnitureModelBuying", DoorFurniture[listitem][furnitureModel]);
			SetIntVar(playerid, "FurniturePriceBuying", DoorFurniture[listitem][furniturePrice]);
			SetStringVar(playerid, "FurnitureNameBuying", DoorFurniture[listitem][furnitureName]);
		}
		if(GetCash(playerid) < GetIntVar(playerid, "FurniturePriceBuying")) return NoCashMSG(playerid);
		GiveCash(playerid, -GetIntVar(playerid, "FurniturePriceBuying"));
		format(msg, sizeof(msg), "You have bought a {00FF00}%s{FFFFFF}, for ${00FF00}%d{FFFFFF}.", GetStringVar(playerid, "FurnitureNameBuying"), GetIntVar(playerid, "FurniturePriceBuying"));
		ServerMSG(playerid, msg);
		ServerMSG(playerid, "You may press {FFFF00}ESC{FFFFFF} if you want to cancel the purchase");
		PutPlayer(playerid, x, y, z+1);
		FurnitureInfo[houseid][i][fObject] = CreateDynamicObject(GetIntVar(playerid, "FurnitureModelBuying"), x, y, z-1, 0.0, 0.0, 0.0, GetWorld(playerid), GetInterior(playerid), -1, 200.0);
		HouseInfo[houseid][hFurnitures] += 1;
		SetIntVar(playerid, "JustBoughtFurniture", 1);
		SetIntVar(playerid, "ChosenFurnitureSlot", i);	
		EditDynamicObject(playerid, FurnitureInfo[houseid][i][fObject]);
		UpdateHouseInfo(houseid);
		OnPlayerBuyFurniture(houseid, GetInterior(playerid), GetWorld(playerid), i, GetIntVar(playerid, "FurnitureModelBuying"), GetIntVar(playerid, "FurniturePriceBuying"), GetStringVar(playerid, "FurnitureNameBuying"), x, y, z);
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}

Dialog:BedroomFurniture(playerid, response, listitem, inputtext[])
{
	new string[3000];
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				for(new i = 0; i < sizeof(BedsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, BedsInfo[i][furnitureName], BedsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Beds"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 14);
			}
			case 1:
			{
				for(new i = 0; i < sizeof(DressersInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, DressersInfo[i][furnitureName], DressersInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Dressers"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 15);
			}
			case 2:
			{
				for(new i = 0; i < sizeof(CabinetsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, CabinetsInfo[i][furnitureName], CabinetsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Cabinets"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 16);
			}
		}
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}

Dialog:LivingroomFurniture(playerid, response, listitem, inputtext[])
{
	new string[3000];
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				for(new i = 0; i < sizeof(ChairsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, ChairsInfo[i][furnitureName], ChairsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Chairs"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 3);
			}
			case 1:
			{
				for(new i = 0; i < sizeof(TablesInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, TablesInfo[i][furnitureName], TablesInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Tables"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 4);
			}
			case 2:
			{
				for(new i = 0; i < sizeof(SofasInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, SofasInfo[i][furnitureName], SofasInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Sofas"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 5);
			}
			case 3:
			{
				for(new i = 0; i < sizeof(DinnerTablesInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, DinnerTablesInfo[i][furnitureName], DinnerTablesInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Dinning tables"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 6);
			}
			case 4:
			{
				for(new i = 0; i < sizeof(TelevisionsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, TelevisionsInfo[i][furnitureName], TelevisionsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Televisions"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 7);
			}	
		}
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}

Dialog:BuyFurnitureDialog(playerid, response, listitem, inputtext[])
{
	new string[3000];
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				for(new i = 0; i < sizeof(KitchenInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, KitchenInfo[i][furnitureName], KitchenInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Kitchen appliances"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 1);
			}
			case 1:
			{
				for(new i = 0; i < sizeof(BathroomInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, BathroomInfo[i][furnitureName], BathroomInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Bathroom appliances"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 2);
			}
			case 2:
			{
				ShowDialog(playerid, Show:<LivingroomFurniture>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Livingroom & Kitchen stuff"EMBED_WHITE":", "Chairs\nTables\nSofas\nDinning tables\nTelevisions", "Select", "Close");
			}
			case 3:
			{
				ShowDialog(playerid, Show:<BedroomFurniture>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Bedroom appliances"EMBED_WHITE":", "Beds\nDressers\nCabinets", "Select", "Close");
			}
			case 4:
			{
				ShowDialog(playerid, Show:<DecorationDialog>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Decorations"EMBED_WHITE":", "Carpets\nPictures\nPlants\nLamps\nRandom stuff\nRandom mess", "Select", "Close");
			}
			case 5:
			{
				ShowDialog(playerid, Show:<ConstructionDialog>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Constructions"EMBED_WHITE":", "Walls\nDoors", "Select", "Close");
			}
			
		}
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}

Dialog:ConstructionDialog(playerid, response, listitem, inputtext[])
{
	new string[4000];
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				for(new i = 0; i < sizeof(WallsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, WallsInfo[i][furnitureName], WallsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Walls"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 17);
			}
			case 1:
			{
				SCM(playerid, COLOR_GREY, "[NOTE]: If you place a door, you can /lock & /door.");
				for(new i = 0; i < sizeof(DoorFurniture); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, DoorFurniture[i][furnitureName], DoorFurniture[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Doors"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 18);
			}
		}
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}

Dialog:DecorationDialog(playerid, response, listitem, inputtext[])
{
	new string[2300];
	if(response) 
	{
		switch(listitem)
		{
			case 0:
			{
				for(new i = 0; i < sizeof(GrugsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, GrugsInfo[i][furnitureName], GrugsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Carpets"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 8);
			}
			case 1:
			{
				for(new i = 0; i < sizeof(PicturesInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, PicturesInfo[i][furnitureName], PicturesInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Pictures"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 9);
			}
			case 2:
			{
				for(new i = 0; i < sizeof(PlantsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, PlantsInfo[i][furnitureName], PlantsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Plants"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 10);
			}
			case 3:
			{
				for(new i = 0; i < sizeof(LampsInfo); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, LampsInfo[i][furnitureName], LampsInfo[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Lamps"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 11);
			}
			case 4:
			{
				for(new i = 0; i < sizeof(RandomDecorations); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, RandomDecorations[i][furnitureName], RandomDecorations[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Random stuff"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 12);
			}
			case 5:
			{
				for(new i = 0; i < sizeof(RandomMess); i++)
				{
					format(string, sizeof(string), "%s("EMBED_YELLOW"%d"EMBED_WHITE") %s - "EMBED_CYAN" $%d.\n", string, i, RandomMess[i][furnitureName], RandomMess[i][furniturePrice]);
				}
				ShowDialog(playerid, Show:<HandleFurnitureBuying>, DIALOG_STYLE_LIST, ""EMBED_YELLOW"Random mess"EMBED_WHITE":", string, "Buy", "Close");
				SetIntVar(playerid, "TypeBuying", 13);
			}		
		}
	}
	else
	{
		SCM(playerid, COLOR_CYAN, "You've canceled the furniture dialog.");
	}
	return 1;
}