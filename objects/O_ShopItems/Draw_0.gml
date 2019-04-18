if mouse_x > x and mouse_x < x + sprite_width and mouse_y > y and mouse_y < y + sprite_height {

   //mouse enter
   draw_sprite(S_ShopItems_MouseEnter, 0, x, y);
   
   if (mouse_check_button(mb_left))
   {
	   clicked = true;
	   draw_sprite(S_ShopItems_Clicked, 0, x, y);
   }
   
   else if(mouse_check_button_released(mb_left))
   {
	   draw_sprite(S_ShopItems_MouseEnter, 0, x, y);
   }

} else {

   //mouse leave
   draw_sprite(S_ShopItems, 0, x, y);

}





draw_set_font(F_Text);

//Draw Name
draw_set_halign(fa_center);
draw_text(x+boxWidth/2, y+boxHeight/2, name);
