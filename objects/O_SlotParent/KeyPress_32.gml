if((!finishedSpinning and !running) && count < 6) 
{
	if(score >= global.bet)
	{
		score -= global.bet;
	}
	else 
	{
		score = 0;
	}
	O_SlotButton.image_speed = 1.27;
	alarm[0] = 2 + random_range(20,45);
	running = true;
	run_speed = 10 + random(5);
	count++;
}


if(count == 6) {
	alarm[1] = 30;
}