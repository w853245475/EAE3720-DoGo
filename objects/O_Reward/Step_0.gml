//Only check for a winner when all “reels” have stopped
if(O_Slot1.finishedSpinning and O_Slot2.finishedSpinning and O_Slot3.finishedSpinning)
{
	//Player wins
	if(O_Slot1.y1 == O_Slot2.y1 and O_Slot2.y1 = O_Slot3.y1)
	{
		playerWins = true;
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
		score += global.bet * 2;
	}
	// Player does not win
	else 
	{
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
		playerWins = false;
	}
}
