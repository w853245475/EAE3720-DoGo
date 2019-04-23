if((!finishedSpinning and !running) && count < 6) 
{
	running = true;
	O_SlotButton.image_speed = 1.27;
	alarm[0] = 2 + random_range(20,45);
	run_speed = 10 + random(5);
	count++;
}


if(count == 6) {
	alarm[1] = 30;
}