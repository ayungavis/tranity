public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_SELECT)
    {
        if(response)
        {
            switch(listitem)
            {
                case 0: GRAFFINPUT
                case 1:
				{
				    	new string[ 500 ];
//						new PickupD = nGraffiti();
						//for(new ID = 0; ID < 30; ID++)
		    			new d[96];
    					format(d, sizeof(d),"Graffiti List "COL_ORANGE"(Creator Lean)");
   						new stringz[128];
						new c;
						for(new ID = 0; ID < gammount; ID++)
						{
							c = strlen(gInfo[ID][graffname]);
                            format(stringz, sizeof(stringz),"/Graffitis/%d.ini",ID);
							if( c > 1 && fexist(stringz))
							{
								format(string, sizeof(string), "%s\nName: %s "COL_ORANGE"(%d) (Creator: %s)\n",string, gInfo[ID][graffname], ID,gInfo[ID][graffcreator]);
								ShowPlayerDialog(playerid,DIALOG_LIST,DIALOG_STYLE_LIST,d,string,"Delete","Cancel");
							}
						}
				}
            }
        }
        else return GameTextForPlayer(playerid, "] Graffiti Menu Aborted ]",5000, 5);
        return 1; // We handled a dialog, so return 1. Just like OnPlayerCommandText.
    }


    if(dialogid == DIALOG_LIST)
    {
        if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            new id = listitem;
           	new string[128];
			format(string, sizeof(string),"/Graffitis/%d.ini",id);
			if(!IsPlayerAdmin(playerid)) return GameTextForPlayer( playerid, "~r~You are not authorized \nto delete Graffitis!]",10000,5);
			if(!fexist(string))
			{
			format(string,sizeof(string),"~y~]~r~Something went wrong, try again~y~]",id);
			GameTextForPlayer(playerid, string,7000,3);
			return 1;
			}
    		fremove(string);
    		format(string,sizeof(string),"~y~]~g~Graffiti ~r~%d ~g~Succefully removed!~y~]",id);
    		GameTextForPlayer(playerid, string,7000,3);
    		DestroyDynamicObject( gInfo[id][OBJECTID] );


        }
        else return GRAFFDIALOG
        return 1; // We handled a dialog, so return 1. Just like OnPlayerCommandText.
    }


    if(dialogid == DIALOG_COLOR)
    {
        if(response) // If they clicked 'Select' or double-clicked a weapon
        {

            switch(listitem)
            {

                case 0: POBJECTC[playerid] = "000000";// BLACK

                case 1: POBJECTC[playerid] = "FFFFFF"; // WHITE

                case 2: POBJECTC[playerid] = "F81414"; // RED

                case 3: POBJECTC[playerid] = "00FF22"; // GREEN

                case 4: POBJECTC[playerid] = "00CED1"; // LIGHTBLUE

                case 5: POBJECTC[playerid] = "C3C3C3";  // GREY


            }
			new string[128];
   			new string2[96];
			format(string2, sizeof(string2),"{%s} %s",POBJECTC[playerid],POBJECTN[playerid]);
   			POBJECTN[playerid] = string2;
			format(string,sizeof(string), ""COL_WHITE"Are you happy with your Color? \n  "COL_ORANGE"%s (Points to spray %d)1 point/second",string2, sprayammountch[playerid]);
 			ShowPlayerDialog(playerid, DIALOG_HAPPY, DIALOG_STYLE_MSGBOX, "Graffiti Menu", string, "Yes!", "No :(");
 			SCM(playerid, COLOR_LIGHTRED, string2);



        }
        else return GRAFFINPUT
        return 1; // We handled a dialog, so return 1. Just like OnPlayerCommandText.
    }

    if(dialogid == DIALOG_HAPPY)
    {
        if(response) // If they clicked 'Yes' or pressed enter
        {
            startgraff(playerid);
        }
        else // Pressed ESC or clicked cancel
        {
			GRAFFINPUT
        }
        return 1; // We handled a dialog, so return 1. Just like OnPlayerCommandText.
    }


	if(dialogid == DIALOG_INPUTGRAFF)
    {
        if(!response) return GRAFFDIALOG

       	if(isnull(inputtext)) return GRAFFINPUTER
       	else
       	{
       	    new string[96];
       	    format(string, sizeof(string),"%s",inputtext);
       	    POBJECTN[playerid] = string;
       	    sprayammountch[playerid] = strlen(string); // All characters input counted
       	    GRAFFCOLOR
		}


        return 1; // We handled a dialog, so return 1. Just like OnPlayerCommandText.
    }




    return 0; // You MUST return 0 here! Just like OnPlayerCommandText.
}
