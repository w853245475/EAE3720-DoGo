if(global.bet < temp and global.chips > 0)
{
	global.bet += 10;
	global.chips -= 10;
	image_index = 1;
	
}
else 	
{
	global.bet += global.chips;
	image_index = 1;

}