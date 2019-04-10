draw_sprite_stretched(S_ShopItems, image_index, x, y, 200, 100);

if mouse_x > x and mouse_x < x + sprite_width and mouse_y > y and mouse_y < y + sprite_height {

   //mouse enter
   draw_sprite_stretched(S_ShopItems_MouseEnter, image_index, x, y, 200, 100);
   
   if (mouse_check_button(mb_left))
   {
	  	   draw_sprite_stretched(S_ShopItems_Clicked, image_index, x, y, 200, 100);
   }
   
   else if(mouse_check_button_released(mb_left))
   {
	   draw_sprite_stretched(S_ShopItems_MouseEnter, image_index, x, y, 200, 100);	
	   room_goto(Living_Room);
   }

} else {

   //mouse leave
   draw_sprite_stretched(S_ShopItems, image_index, x, y, 200, 100);

}

draw_set_font(F_Text);



//Draw Name
draw_set_halign(fa_center);


draw_text(x+boxWidth/2-100, y+boxHeight/2, name);



