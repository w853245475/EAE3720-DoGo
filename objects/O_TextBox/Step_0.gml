if(keyboard_check_pressed(vk_space)){
	if(page+1 < array_length_1d(text)){
		page++;	
		charCount = 0;
	}
	else
	{
		instance_destroy();	
		creator.alarm[1] = 1;
	}
	
}