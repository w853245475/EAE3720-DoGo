

draw_sprite(S_TextBox, 0, x, y);

draw_set_font(F_Text);


if(charCount < string_length(text[page]))
{
	charCount+=0.5;
}
textPart = string_copy(text[page], 1, charCount);

//Draw Name
draw_set_halign(fa_center);
draw_text(x+boxWidth/2, y+yBuffer, name);


//Draw Text;
draw_set_halign(fa_left);
draw_text_ext(x+xBuffer, y+stringHeight+3 * yBuffer, textPart, stringHeight, boxWidth);


