/// @description Meat and potatoes

//Move button slightly when pressed
if (mouse_check_button(mb_left)){
    if (instance_position(mouse_x, mouse_y, id)){
        x = int_startX - 5;
        y = int_startY + 5;
    }else{
        x = int_startX;
        y = int_startY;
    }
}else{
    x = int_startX;
    y = int_startY;
}

