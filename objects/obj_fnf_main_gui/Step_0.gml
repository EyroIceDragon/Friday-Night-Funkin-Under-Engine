/// @description 更新GUI变换

if (need_recreate) {
    if (surface_exists(global.gui_surface)) {
        surface_free(global.gui_surface);
    }
    global.gui_surface = surface_create(surface_width, surface_height);
    need_recreate = false;
    show_debug_message("🔄 表面重新创建: " + string(surface_width) + "x" + string(surface_height));
}

if (!surface_exists(global.gui_surface)) {
    global.gui_surface = surface_create(surface_width, surface_height);
}

var target_w = window_frame_get_width();
var target_h = window_frame_get_height();
if (target_w <= 0 || target_h <= 0) {
    target_w = view_wport[0] > 0 ? view_wport[0] : window_get_width();
    target_h = view_hport[0] > 0 ? view_hport[0] : window_get_height();
}

var scale_w = target_w / surface_width;
var scale_h = target_h / surface_height;

if Get_Song_Music_Beat(0) gui_scale_change += 0.008 * gui_scale;
if Get_Song_Music_Beat(1) gui_scale_change += 0.005 * gui_scale;
gui_scale_change += (0 - gui_scale_change) / 20;

gui_scale = min(scale_w, scale_h) + gui_scale_change;

var draw_w = surface_width * gui_scale;
var draw_h = surface_height * gui_scale;

var center_x = target_w / 2;
var center_y = target_h / 2;

var angle_rad = -angle * pi / 180;

// 左上角 = 中心 - (尺寸/2) 旋转后的偏移
gui_x = center_x - (draw_w / 2) * cos(angle_rad) + (draw_h / 2) * sin(angle_rad);
gui_y = center_y - (draw_w / 2) * sin(angle_rad) - (draw_h / 2) * cos(angle_rad);

if (shake_time > 0) {
    shake_time -= Dt_math_scr(1);
    gui_x += random_range(-shake_intensity[0], shake_intensity[0]);
    gui_y += random_range(-shake_intensity[1], shake_intensity[1]);
}

//angle = sin(obj_fnf_main.game_test_time/10) * 2;


	