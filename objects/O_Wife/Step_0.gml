



if(place_meeting(x+5, y+5, O_MainCharacter)
 ||place_meeting(x-5, y+5, O_MainCharacter)
 ||place_meeting(x+5, y-5, O_MainCharacter)
 ||place_meeting(x-5, y-5, O_MainCharacter))
{	
	
	if(keyboard_check(vk_space))
	{	
		/*
		if((myTextbox_talked == noone) && (myTextbox == noone)&&talked)
		{
			myTextbox_talked = instance_create_layer(100, 500, "Text", O_TextBox);
			myTextbox_talked.creator = self;
			myTextbox_talked.name = myName;
			myTextbox_talked.hasOption = false;
			myTextbox_talked.text = myText_Day1_Before_Talked;	
		}
		*/
		
		//O_MainCharacter.alarm[0] = 1;
		if (myTextbox == noone)
		{ 
			if (talked)
			{
				myTextbox = instance_create_layer(100, 500, "Text", O_TextBox);
				
				
				if(beforeGamb)
				{
					myTextbox.text = myText_Day1_Before_Talked;	
					myTextbox.creator = self;
					myTextbox.name = myName;
					myTextbox.hasOption = false;
				}
				
				else
				{
					myTextbox.text = myText_Day1_After_Talked;	
					myTextbox.creator = self;
					myTextbox.name = myName;
					myTextbox.hasOption = false;
				}
			}
			
			else
			{
				myTextbox = instance_create_layer(100, 500, "Text", O_TextBox);
				show_debug_message(O_GameManager.dayCount);
				switch(O_GameManager.dayCount){
						case 1:
							switch(O_GameManager.beforeGamb){
								case 0:												
									myTextbox.text = myText_Day1_After;
									total_options = dinner;
									
									//myTextbox.hasOption = false;
									break;
								case 1:
									myTextbox.text = myText_Day1_Before;									
									total_options = options;
									break;
							}
							break;
							
						case 2:
							switch(O_GameManager.beforeGamb){
								case 0:
									myTextbox.text = myText_Day1_After;
									//myTextbox.hasOption = false;
									break;
								case 1:
									myTextbox.text = myText_Day2_Before;			
									break;
									
							}		
							
							break;
						case 3:
							myTextbox.text = myText2;
							break;
				}	
				

				myTextbox.creator = self;
				myTextbox.name = myName;
			}
		}
		
		/*
		else{
			if(instance_exists(myTextbox))
			{
			
				if(hasOption){
					textLength = array_length_1d(myText);
					if(myTextbox.page+1 == textLength)
					{
						option1 = instance_create_layer(300, 200, "Text", O_ShopItems);
						option1.name = options[0];
					}
				}
			}
		}
		*/
		
		
	}
}

else
{
	if (myTextbox != noone)
	{
		
		instance_destroy(myTextbox);
		myTextbox =noone;
	}
	
	if (myTextbox_talked != noone)
	{
		
		instance_destroy(myTextbox_talked);
		myTextbox_talked =noone;
	}
}