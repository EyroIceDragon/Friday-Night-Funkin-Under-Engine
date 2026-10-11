Keyboard_Step_scr()
window_frame_update();
if (window_frame_get_visible()) {
	if (keep_aspect) {
		event_user(1);
	} else event_user(0);
}

//var new_room = Main_game_play_room
//var view_width = window_get_width();    // 视口宽度
//var view_height = window_get_height();  // 视口高度
//room_set_width(new_room, view_width);
//room_set_height(new_room, view_height);
if keyboard_check_pressed(ord("R")) room_goto(Main_game_play_room);
game_dt = delta_time / 1000000
