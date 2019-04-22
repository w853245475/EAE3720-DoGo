//Only check for a winner when all “reels” have stopped
if(O_Slot1.finishedSpinning and O_Slot2.finishedSpinning and O_Slot3.finishedSpinning)
{
	//Player wins
	if(O_Slot1.y1 == O_Slot2.y1 and O_Slot2.y1 = O_Slot3.y1)
	{
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
		a = O_Slot1.y1 / 64;
		switch(a){
			case 0:
			score += global.bet * 3;
			playerWins = true;
			break;
			case 2:
			score += global.bet * 4;
			playerWins = true;
			break;
			case 4:
			if(score >= global.bet)
			{
				score -= global.bet;
			}
			else 
			{
				score = 0;
			}
			playerWins = false;
			break;
			case 6:
			score += global.bet * 5;
			playerWins = true;
			break;
			
		}
	}
	// Player does not win
	else 
	{
		O_Slot1.finishedSpinning = false;
		O_Slot2.finishedSpinning = false;
		O_Slot3.finishedSpinning = false;
		O_SlotParent.drawReward = true;
		playerWins = false;
	}
}
