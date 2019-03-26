if(place_meeting(x+5, y+5, O_MainCharacter)
 ||place_meeting(x-5, y+5, O_MainCharacter)
 ||place_meeting(x+5, y-5, O_MainCharacter)
 ||place_meeting(x-5, y-5, O_MainCharacter))
{	
	if(keyboard_check(vk_space))
	{
	if (myTextbox == noone)
	{
		myTextbox = instance_create_layer(312, 600, "Text", O_TextBox);
		myTextbox.text ="I'm your wife!";
	}
	}
}

else
{
	O_MainCharacter.horizontalSpeed = 4;
	if (myTextbox != noone)
	{
		instance_destroy(myTextbox);
		myTextbox =noone;
	}
}