if(global.bet < score and score > 0)
{
	global.bet += 10;
	score -= 10;
	image_index = 1;
	
}
else 	
{
	global.bet = score;
	image_index = 1;

}