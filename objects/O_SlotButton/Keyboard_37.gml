if(O_Reward.showingReward || (!O_SlotParent.finishedSpinning and !O_SlotParent.running)) 
{
	O_SlotParent.alarm[0] = 2 + random_range(20,45);
	O_SlotParent.running = true;
	run_speed = 7 + random(5);
	O_Reward.showingReward = false;
	O_Reward.sprite_index = -1;
}
