/// @description Meat and potatoes

//If speed is bigger than 0, flip the card till it comes to a stop (only if he is team 0 tho)
if (int_team == 0){
    if (speed > 0){
        //image_angle -= 2.75;
        speed -= .155;
    }else{
        speed = 0;
        y = room_height - 244;
        //image_angle = 0;
    }
}

//What to do if I am told to flip (this happens with the dealers over turned card
if (b_flip){
    if (image_xscale < 0){
        image_index = 52;
    }else{
        image_index = int_type;
    }
    if (image_xscale < 1){
        image_xscale += .025;
    }else{
        b_flip = false;
    }
}
    
