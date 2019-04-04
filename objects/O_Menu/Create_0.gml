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
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, exit_game],
);

ds_settings = create_menu_page(
	["AUDIO", menu_element_type.script_runner, resume_game],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.settings],
	["BACK", menu_element_type.script_runner, exit_game],
);

ds_menu_audio = create_menu_page(
	["AUDIO",menu_element_type.page_transfer, menu_page.audio],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.settings],
	["BACK", menu_element_type.page_transfer, menu_page.main],
);

ds_settings = create_menu_page(
	["MASTER", menu_element_type.script_runner, resume_game],
	["SOUNDS", menu_element_type.page_transfer, menu_page.settings],
	["MUSIC", menu_element_type.script_runner, exit_game],
);