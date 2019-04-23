if(running) 
{
	y1 += run_speed;
	y1 = y1 mod sprite_height;
}
else
{
	O_SlotButton.image_speed = 0;
	O_SlotButton.image_index = 0;
}

if(score <= 0 && finishedSpinning && O_Reward.playerWins == false)
{
	if (noMoneybox == noone)
	{
		noMoneybox = instance_create_layer(100, 500, "Text", O_TextBox);
		noMoneybox.text = text;
		noMoneybox.creator = self;
		noMoneybox.name = name;
		boxTriggered = true;
	}
	
	if(boxTriggered)
	{
		if(!instance_exists(noMoneybox))
		{
			O_GameManager.state = "NO MONEY END";
		}
	}
}


