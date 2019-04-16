/*Option Agree*/


//myTextbox_After_Option = instance_create_layer(100, 500, "Text", O_TextBox);
//myTextbox_After_Option.text = myText_Agree;


switch(O_GameManager.dayCount){
	case 1:
		switch(O_GameManager.beforeGamb){
			case 0:
				
				score -= 30;
				O_GameManager.Happiness+=10;
				myTextbox.text = myText_Day1_Dinner_Agree;
				myTextbox.hasOption = false;
				myTextbox.page = 0;
																
				//myTextbox.hasOption = false;
				break;
			case 1:
				myTextbox.text = myText_Day1_Agree;
				myTextbox.hasOption = false;
				myTextbox.page = 0;
									
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




//alarm[1] = 10;
//O_MainCharacter.alarm[1] = 1;
//option1 = noone;

//instance_destroy(myTextbox);
