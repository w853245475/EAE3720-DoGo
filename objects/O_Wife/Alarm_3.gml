/*Option Disagree*/

switch(O_GameManager.dayCount){
	case 1:
		switch(O_GameManager.beforeGamb){
			case 0:
				score -= 5;			
				O_GameManager.Happiness -= 10;
				myTextbox.text = myText_Day1_Dinner_Disagree;
				myTextbox.hasOption = false;
				myTextbox.page = 0;
																
				//myTextbox.hasOption = false;
				break;
			case 1:
				myTextbox.text = myText_Day1_Disagree;
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

talked = true;
/*
alarm[1] = 10;
option1 = noone;
O_MainCharacter.alarm[1] = 1;
instance_destroy(myTextbox);
*/