draw_text(15, 200, O_GameManager.state);
draw_text(15, 150, "beforeGamb:");
draw_text(200, 150, O_GameManager.beforeGamb);
draw_text(100, 250, dayCount);
draw_text(15, 250, "dayCount: ");

if (instance_exists(O_MainCharacter))
{
	draw_set_font(F_Text);
	draw_text(20, 20, score);
	draw_text(20, 40, "Use W A S D To Move Around.");
	draw_text(20, 60, "Use Space To Talk, Go Talk To Her.");
}