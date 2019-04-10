
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
			room_goto(Casino_Room);
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
				O_GameManager.dayCount ++ ;
				state = "ROOM EXIT TRANSITION";	
			}
		}
		break;
	}
	
	case "CASINO TO SHOP":
	{
		alpha += 0.01;
		
		if (alpha >= 1)
		{
			//alpha = 0;
			room_goto(Shop_Room);
			break;
		}
		break;
	}
}
	
