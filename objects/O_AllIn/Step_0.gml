if(mouse_check_button(mb_left))
{
	global.bet = obj_control.int_chips;
	obj_control.int_chips = 0;
	image_index = 1;
}