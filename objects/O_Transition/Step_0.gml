
switch (state)
{
	case "IN GAME":
	{		
		//draw_set_alpha(1);
		
		break;
	}
	
	case "LEAVE ROOM TO GAMB":
	{
		alpha += 0.01;
		
		if (alpha >= 1)
		{
			//alpha = 0;
			room_goto(Casino_Switch_Room);
			break;
		}
		break;
		//draw_set_alpha(alpha);
		

	}
	
	case "ROOM EXIT TRANSITION":
	{
		alpha -= 0.01;
		
		
		if (alpha <= 0)
		{
			//alpha = 0;
			state = "IN GAME";
			break;

		}
		break;
		
		//draw_set_alpha(alpha);
	}
	
	case "SLEEP":
	{
		if(sleep)
		{
			alpha += 0.01;
			if (alpha >=1){
				sleep = false;
				O_GameManager.beforeGamb = true;
				O_GameManager.dayCount++ ;
				
				//alarm[0] = 60;
				room_goto(Black_SelfTelling);
				//state = "ROOM EXIT TRANSITION";
				//state = "IN GAME";
				break;
			}
		}
		break;
	}
	
	case "RETURN TO HOME":
	{
		alpha += 0.01;
		
		if (alpha >= 1)
		{
			//alpha = 0;
			room_goto(Living_Room);
			break;
		}
		break;
	}
}
	
