if(room == Casino_Switch_Room)
{
	if (myTextbox == noone)
	{
		myTextbox = instance_create_layer(100, 500, "Text", O_TextBox);
		myTextbox.text = Dialogue;
		myTextbox.name = myName;
		//myTextbox.options = casino_options;
		total_options = casino_options;
		myTextbox.creator = self;
	}
	
}