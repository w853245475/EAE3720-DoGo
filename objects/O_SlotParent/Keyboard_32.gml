if((!finishedSpinning and !running)) 
{
	score -= global.bet;
	O_SlotButton.image_speed = 1.27;
	alarm[0] = 2 + random_range(20,45);
	running = true;
	run_speed = 7 + random(5);
}
