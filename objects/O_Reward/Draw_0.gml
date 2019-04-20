//We will only draw if the sprite_index is set to something
if(playerWins == true) 
{
	//Drawing some text for the player
	draw_text(x-sprite_width / 2 - 15, y - 42, "You Win!")
	
}
else 
{
	//Drawing some text for the player
	draw_text(x-sprite_width / 2 - 15, y - 42, "You Lost!")
}
