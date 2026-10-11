/// @description
function Init_keyboard_scr(){
	global.windows_key_data = ds_map_create();
	ds_map_add(global.windows_key_data, "left", false);
	ds_map_add(global.windows_key_data, "down", false);
	ds_map_add(global.windows_key_data, "up", false);
	ds_map_add(global.windows_key_data, "right", false);
	ds_map_add(global.windows_key_data, "left_pressed", false);
	ds_map_add(global.windows_key_data, "down_pressed", false);
	ds_map_add(global.windows_key_data, "up_pressed", false);
	ds_map_add(global.windows_key_data, "right_pressed", false);
	ds_map_add(global.windows_key_data, "left_released", false);
	ds_map_add(global.windows_key_data, "down_released", false);
	ds_map_add(global.windows_key_data, "up_released", false);
	ds_map_add(global.windows_key_data, "right_released", false);

	ds_map_add(global.windows_key_data, "key_left", vk_left); 
	ds_map_add(global.windows_key_data, "key_down", vk_down); 
	ds_map_add(global.windows_key_data, "key_up", vk_up); 
	ds_map_add(global.windows_key_data, "key_right", vk_right);
}