/// @description Moves
// You can write your code in this editor


inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
if(inputLeft) || keyboard_check(ord("A")){
	//x -= horizontalSpeed; 	
	speed = horizontalSpeed * (-1); 	
}
else if(inputRight) ||  keyboard_check(ord("D"))
{
	//x += horizontalSpeed;
	speed = horizontalSpeed; 
}
else if(inputUp) ||  keyboard_check(ord("W"))
{
	y -= horizontalSpeed;
	//speed = horizontalSpeed; 
}
else if(inputDown) ||  keyboard_check(ord("S"))
{
	y += horizontalSpeed;
	//speed = horizontalSpeed; 
}