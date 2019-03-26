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
			
			textCount++;
		}
		
	}
}

else
{
	//O_MainCharacter.horizontalSpeed = 4;
	if (myTextbox != noone)
	{
		instance_destroy(myTextbox);
		myTextbox =noone;
	}
}