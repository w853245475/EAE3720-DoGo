if(global.bet < obj_control.int_chips and obj_control.int_chips > 0)
{
	global.bet += 10;
	obj_control.int_chips -= 10;
	image_index = 1;
	image_index = 0;
}
else 	
{
	global.bet = score;
	image_index = 1;
	image_index = 0;
}