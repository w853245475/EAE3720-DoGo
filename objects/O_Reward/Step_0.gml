//Only check for a winner when all “reels” have stopped
if(O_Slot1.finishedSpinning and O_Slot2.finishSpinning and O_Slot3.finishSpinning)
{
	//Player wins
	if(O_Slot1.y1 == O_Slot2.y1 and O_Slot2.y1 = O_Slot3.y1)
	{
		O_Reward.sprite_index = ds_map_find_value(rewardMap, O_Slot1.y1);
		showingReward = true;
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
	}
	// Player does not win
	else 
	{
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
	}
}
