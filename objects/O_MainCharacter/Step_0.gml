/// @description Moves
// You can write your code in this editor
if((O_GameManager.dayCount == 1) && startTalk){
	myTextbox = instance_create_layer(x-425, 500, "Text", O_TextBox);
	myTextbox.text = myText;
	myTextbox.hasOption = false;
	myTextbox.creator = self;
	myTextbox.name = myName;
	startTalk = false;
}


if(room != Living_Room)
{
	x = 320;
	y = 640;
	self.visible = 0;
}

else
{
self.visible = 1;


inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);

if(speed == 0 && !(inputUp) && !(inputDown) && !(keyboard_check(ord("W"))) && !(keyboard_check(ord("S"))))
{
	image_speed = 0;	
	image_index = 0;
}

if(!talking)
{
if(inputLeft || keyboard_check(ord("A"))){
	upDownMoving = false;
	sprite_index =S_MainCharacter_Left;
	if (place_meeting(x-horizontalSpeed, y,  O_WallBlocker) 
	|| place_meeting(x-horizontalSpeed, y,  O_Wife))
	{
		speed = 0;
	}
	
	else{
		//x -= horizontalSpeed; 	
		image_speed = 0.5;

		speed = horizontalSpeed * (-1); 	
	}
	

}
else if(inputRight) ||  keyboard_check(ord("D"))
{
	upDownMoving = false;
	sprite_index =S_MainCharacter_Right;
	if (place_meeting(x+horizontalSpeed, y,  O_WallBlocker) 
	|| place_meeting(x+horizontalSpeed, y,  O_Wife))
	{
		speed = 0;
	}
	//x += horizontalSpeed;
	
	else{
		image_speed = 0.5;

		speed = horizontalSpeed; 
	}
}
else if(inputUp) ||  keyboard_check(ord("W"))
{
	sprite_index =S_MainCharacter_Up;
	
	if (place_meeting(x, y-horizontalSpeed,  O_WallBlocker) 
	|| place_meeting(x, y-horizontalSpeed,  O_Wife))
	{			
		speed= 0;
	}
	
	else
	{
		image_speed = 0.5;
		y -= horizontalSpeed;
	}
	//speed = horizontalSpeed; 
}
else if(inputDown) ||  keyboard_check(ord("S"))
{
	sprite_index =S_MainCharacter_Down;
	if (place_meeting(x, y+horizontalSpeed,  O_WallBlocker) 
	|| place_meeting(x, y+horizontalSpeed,  O_Wife))
	{			
		speed= 0;
	}
	
	
	else
	{
		image_speed = 0.5;
		y += horizontalSpeed;
	}
	//speed = horizontalSpeed; 
}
}
}