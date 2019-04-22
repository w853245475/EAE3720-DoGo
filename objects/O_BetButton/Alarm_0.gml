/// @description Place self at the correct location

switch(int_type){
    //Hit button
    case 0:
    image_index = 2;
    x = room_width - sprite_width;
    y = 300;
    int_startX = x;//We need these variables to move the button slightly when the player presses it
    int_startY = y;
    break;
    //Stand button
    case 1:
    image_index = 3;
    x = room_width - sprite_width;
    y = sprite_height + 100;
    int_startX = x;
    int_startY = y;
    break;
	case 2:
	image_index = 4;
	x = room_width - sprite_width;
	y = sprite_height + 200;
	int_startX = x;
	int_startY = y;
	break;
}
    