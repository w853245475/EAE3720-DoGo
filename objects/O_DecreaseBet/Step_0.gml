if(mouse_check_button(mb_left))
{
	if(global.bet > 0)
	{
		global.bet -= 10;
		obj_control.int_chips += 10;
		image_index = 1;
	}
}