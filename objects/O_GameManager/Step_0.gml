




switch(state){
	case "IN GAME":
	{
		break;
	}
	
	
	case "NO MONEY END":
	{
		room_goto(DivorceEnding);	
		state = "IN GAME";
		break;
		
	}
	
}