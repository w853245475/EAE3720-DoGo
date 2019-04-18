var i =0;
repeat(buttons)
{
	draw_set_font(F_MainMenu);
	draw_set_halign(fa_center);
	
	draw_set_color(c_white);
	
	if(menu_index == i)
	{
		draw_set_color(c_red);	
	}
	draw_text(menu_x, menu_y + button_h * 2* i, button[i]);
	draw_set_color(c_white);
	i++;	
	
	draw_set_font(F_Text);
}