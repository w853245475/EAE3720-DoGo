state = "ROOM EXIT TRANSITION";
alpha = 1;

sleep = false;

if(room == Living_Room)
{
	audio_stop_all();
	audio_play_sound(Home, 30, true);	
}

else if((room == DivorceEnding) || (room== HappyEnding))
{
	audio_stop_all();
	audio_play_sound(eNDING, 30, true);	
}

else
{
	audio_stop_all();
	audio_play_sound(Gamble, 30, true);	
}
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));