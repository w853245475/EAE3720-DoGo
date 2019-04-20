if((!O_SlotParent.finishedSpinning and !O_SlotParent.running)) 
{
	O_SlotParent.alarm[0] = 2 + random_range(20,45);
	O_SlotParent.running = true;
	run_speed = 7 + random(5);
}