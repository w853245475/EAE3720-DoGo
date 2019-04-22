if(O_GameManager.dayCount !=6)
{
	room_goto(Living_Room);
}


else
{
	if(O_GameManager.Happiness >  50)
	{

		room_goto(HappyEnding);
	}
	else
	{
	
		room_goto(DivorceEnding);
	}
}