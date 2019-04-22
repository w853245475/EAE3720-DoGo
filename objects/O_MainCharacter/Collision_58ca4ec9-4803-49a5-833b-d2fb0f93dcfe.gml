

//O_GameControl.state = "ROOM ENTER TRANSITION";
//change_room = true;

//repeat(100){
//	O_Transition.alpha+=0.01;	
//}
if(O_GameManager.beforeGamb)
{
	//room_goto(2);
	
	O_Transition.state = "LEAVE ROOM TO GAMB";
	show_debug_message("get");
	
}



