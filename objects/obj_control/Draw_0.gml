/// @description Draw items

//Draw text

//draw_set_font(F_Text); 
draw_set_halign(fa_left);

draw_text(430, 40, string_hash_to_newline("Dog Dealer"));
draw_text(15, 15, string_hash_to_newline("Money: " + string(score)));
draw_text(15, 80, string_hash_to_newline("Round: " + string(int_round)));

//Draw the players score if it is above -1
if (int_playerScore > -1){
    draw_text(180, 540, string_hash_to_newline("Player's Hand: " + string(int_playerScore)));
}

//Draw the dealers score if it is above -1
if (int_dealerScore > -1){
    draw_text(180, 300, string_hash_to_newline("Dog Dealer's Hand: " + string(int_dealerScore)));
}
//draw_set_font(F_Text); 