/// @description Moves
// You can write your code in this editor


inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
if(inputLeft) || keyboard_check(ord("A")){
	if (place_meeting(990, y,  O_WallBlocker))
	{
	}
	
	else{
		//x -= horizontalSpeed; 	
		speed = horizontalSpeed * (-1); 	
	}
}
else if(inputRight) ||  keyboard_check(ord("D"))
{
	if (place_meeting(30, y, O_WallBlocker))
	{
	}
	//x += horizontalSpeed;
	
	else{
		speed = horizontalSpeed; 
	}
}
else if(inputUp) ||  keyboard_check(ord("W"))
{
	if (place_meeting(x, 225, O_WallBlocker))
	{				
	}
	
	else
	{
	
	
		y -= horizontalSpeed;
	}
	//speed = horizontalSpeed; 
}
else if(inputDown) ||  keyboard_check(ord("S"))
{
	if (place_meeting(x, 675, O_WallBlocker))
	{
	}
	
	else
	{
		y += horizontalSpeed;
	}
	//speed = horizontalSpeed; 
}