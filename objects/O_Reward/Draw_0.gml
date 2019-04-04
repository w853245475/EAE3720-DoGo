 //We will only draw if the sprite_index is set to something
if(sprite_index != -1) 
{
	//Draw the sprite that is set, which is the reward sprite
	draw_self();
	//Drawing some text for the player
	draw_text(x-sprite_width / 2 - 15, y - 42, "You Win!")
	
}
else 
{
	//Draw the sprite that is set, which is the reward sprite
	draw_self();
	//Drawing some text for the player
	draw_text(x-sprite_width / 2 - 15, y - 42, "You Lost!")
}