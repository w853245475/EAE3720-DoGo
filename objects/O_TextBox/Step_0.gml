

if(keyboard_check_pressed(vk_space)){
	
	if(page+1 == array_length_1d(text))
	{
			if(hasOption)
			{
				option1 = instance_create_layer(x+boxWidth/2, y-100, "Text", O_OptionsWife);
				option1.creator = self;
				//option_out = true;

			}
			else{
				/*
				instance_destroy();	
				creator.alarm[1] = 10;
				
				alarm[1] = 1;
				*/
				
				creator.alarm[1] = 10;

				instance_destroy();
			}
	}
	
	
	
	else if(page+1 < array_length_1d(text)){	
		page++;	
		charCount = 0;
				
	}
	else
	{
		
		//instance_destroy();	
		//creator.myTextbox = noone;
		//creator.alarm[1] = 10;
		//alarm[1] = 1;
		
		//O_MainCharacter.alarm[1] = 1;
		creator.alarm[1] = 10;

		instance_destroy();
		
	}
	
}

if(option_out)
{
	if(!instance_exists(option1))
	{
		instance_destroy();	
		creator.alarm[1] = 1;
	}
}