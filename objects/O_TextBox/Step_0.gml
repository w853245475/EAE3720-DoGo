if(keyboard_check_pressed(vk_space)){
	if(page+1 < array_length_1d(text)){
		
		
		page++;	
		charCount = 0;
		
	}
	else
	{
		
		if(hasOption)
		{
			option1 = instance_create_layer(300, 200, "Text", O_ShopItems);
			option1.name = options[0];
			
			if(instance_exists( option1))
			{
				if(option1.clicked)
				{
					instance_destroy(option1);	
				}
			}
		}
		else
		{
			instance_destroy();	
			creator.alarm[1] = 1;
		}
	}
	
}