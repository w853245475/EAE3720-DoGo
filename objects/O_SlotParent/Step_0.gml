if(running) 
{
	y1 += run_speed;
	y1 = y1 mod sprite_height;
}
else
{
	O_SlotButton.image_speed = 0;
	O_SlotButton.image_index = 0;
}

