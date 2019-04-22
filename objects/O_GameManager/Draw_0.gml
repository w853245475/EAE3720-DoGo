draw_text(100, 200, O_GameManager.state);
draw_text(100, 150, "beforeGamb:");
draw_text(200, 150, O_GameManager.beforeGamb);
draw_text(350, 250, dayCount);
draw_text(100, 250, "dayCount: ");

draw_set_halign(fa_left);

if(room == Living_Room)
{
	
	//draw_set_font(F_Text); 
	draw_text(20, 20, "Money:  "+ string(score));

	
	draw_text(200, 20, Happiness);
	draw_text(20, 40, "Use W A S D To Move Around.");
	draw_text(20, 60, "Use Space To Talk, Go Talk To Her.");
}

/*
if (instance_exists(O_MainCharacter))
{
	draw_set_font(F_Text); 
	

}
*/