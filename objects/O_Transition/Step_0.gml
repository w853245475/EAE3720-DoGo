
switch (state)
{
	case "IN GAME":
	{		
		//draw_set_alpha(1);
		
		break;
	}
	
	case "ROOM ENTER TRANSITION":
	{
		alpha += 0.05;
		
		if (alpha >= 1)
		{
			//alpha = 0;
			break;
		}
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
		//draw_set_alpha(alpha);
	}
	
	
}
	
