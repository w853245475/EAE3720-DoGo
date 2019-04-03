global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.keu_down = vk_down;

diaplay_set_gui_size(global.view_width, global.view_height);

enum menu_page{
	main = 0,
	settings = 1,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(
	["RESUME", menu_element_type.script_runner, resume_game],
);