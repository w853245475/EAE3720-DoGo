/// @description Meat and potatoes

//Shrink down to size
if (image_xscale > 1){
    image_xscale -= .25;
    image_yscale -= .25;
}

//Fade away
if (b_fade){
    if (image_alpha > 0){
        image_alpha -= .025;
    }else{
        instance_destroy();
    }
}