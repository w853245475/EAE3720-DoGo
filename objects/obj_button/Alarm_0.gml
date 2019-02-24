/// @description Place self at the correct location

switch(int_type){
    //Hit button
    case 0:
    image_index = 0;
    x = room_width - sprite_width;
    y = 0;
    int_startX = x;//We need these variables to move the button slightly when the player presses it
    int_startY = y;
    break;
    //Stand button
    case 1:
    image_index = 1;
    x = room_width - sprite_width;
    y = sprite_height;
    int_startX = x;
    int_startY = y;
    break;
}
    