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

if(count == 6) {
//	room_goto(2);
}