if(place_meeting(x+5, y+5, O_MainCharacter)
 ||place_meeting(x-5, y+5, O_MainCharacter)
 ||place_meeting(x+5, y-5, O_MainCharacter)
 ||place_meeting(x-5, y-5, O_MainCharacter))
{	

	if(keyboard_check(vk_space))
	{
		if (myTextbox == noone)
		{
			myTextbox = instance_create_layer(100, 500, "Text", O_TextBox);
			myTextbox.text = myText;
			myTextbox.creator = self;
			myTextbox.name = myName;
			

		}
		else{
			if(hasOption){
				textLength = array_length_1d(myText);
				if(myTextbox.page+1 == textLength)
				{
					option1 = instance_create_layer(300, 200, "Text", O_ShopItems);
					option1.name = options[0];
				}
			}	
		}
		
		
	}
}

else
{
	if (myTextbox != noone)
	{
		instance_destroy(myTextbox);
		myTextbox =noone;
	}
}