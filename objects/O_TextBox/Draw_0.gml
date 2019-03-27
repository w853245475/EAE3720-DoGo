

draw_sprite(S_TextBox, 0, x, y);

draw_set_font(F_Text);


if(charCount < string_length(text[page]))
{
	charCount++;
}
textPart = string_copy(text[page], 1, charCount);
draw_text_ext(x, y, textPart, stringHeight, boxWidth);