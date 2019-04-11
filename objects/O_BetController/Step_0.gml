switch(int_state)
{
	case 0:
	with(instance_create(room_width, room_height, obj_button)){
		int_type = 0;
	}
    with(instance_create(room_width, room_height, obj_button)){
        int_type = 1;
    }    
	int_state++;
	break;
	case 1:
	if (mouse_check_button_released(mb_left)){
        var t = instance_position(mouse_x, mouse_y, obj_button);
        if (t > -4){
            alarm[0] = 60;//Wait a little bit
            int_State = 0;
		}
	}
		

}