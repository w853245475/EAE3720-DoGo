draw_sprite_part_ext(sprite_index, image_index, 0, y1, sprite_width, sprite_height / totalImages+3, x, y, 1, 1, c_white, 1);
// 1.5 1.25
draw_sprite_part_ext(sprite_index, image_index, 0, y1 - sprite_height, sprite_width, sprite_height / totalImages+3, x, y, 1, 1, c_white, 1); 

draw_text(15, 15, string_hash_to_newline("Money: " + string(score)));
draw_text(15, 80, string_hash_to_newline("Round: " + string(count)));
