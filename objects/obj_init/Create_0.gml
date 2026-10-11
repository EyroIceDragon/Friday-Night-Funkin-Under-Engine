/// @description 初始画
depth = -999
keep_aspect = false
game_directory = working_directory
game_dt = 0
show_debug_log(1)
Init_keyboard_scr();
window_frame_set_caption("Friday Night Funkin - Under Engine");
window_frame_set_background(c_black);
window_frame_set_min_size(640, 360);
window_set_size(1280,720)
Register_All_Gml_Functions();
game_set_speed(60,0)
window_command_set_active(window_command_close, true);
window_command_set_active(window_command_minimize, true);
window_command_set_active(window_command_maximize, true);
window_command_set_active(window_command_resize, true);
window_command_set_active(window_command_move, true);
application_surface_enable(false)
//application_surface_is_draw_enabled()
//window_set_fullscreen(1)
room_goto(Main_game_play_room)
