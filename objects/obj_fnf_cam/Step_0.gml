/// @description 更新GUI变换

// ---- 表面重建 ----
if (need_recreate) {
    if (surface_exists(global.cam_surface)) {
        surface_free(global.cam_surface);
    }
    global.cam_surface = surface_create(surface_width, surface_height);
    need_recreate = false;
    show_debug_message("🔄 表面重新创建: " + string(surface_width) + "x" + string(surface_height));
}

if (!surface_exists(global.cam_surface)) {
    global.cam_surface = surface_create(surface_width, surface_height);
}

// ---- 窗口尺寸 ----
var target_w = window_frame_get_width();
var target_h = window_frame_get_height();
if (target_w <= 0 || target_h <= 0) {
    target_w = view_wport[0] > 0 ? view_wport[0] : window_get_width();
    target_h = view_hport[0] > 0 ? view_hport[0] : window_get_height();
}

// ---- 计算缩放 ----
var scale_w = target_w / surface_width;
var scale_h = target_h / surface_height;

// Beat动画
if Get_Song_Music_Beat(0) gui_scale_change += 0.005 * gui_scale;
if Get_Song_Music_Beat(1) gui_scale_change += 0.001 * gui_scale;
gui_scale_change += (0 - gui_scale_change) / 20;

gui_scale = min(scale_w, scale_h) + gui_scale_change;

// ---- 位置计算 ----
var draw_w = surface_width * gui_scale;
var draw_h = surface_height * gui_scale;
var center_x = target_w / 2;
var center_y = target_h / 2;
var angle_rad = -angle * pi / 180;

gui_x = center_x - (draw_w / 2) * cos(angle_rad) + (draw_h / 2) * sin(angle_rad);
gui_y = center_y - (draw_w / 2) * sin(angle_rad) - (draw_h / 2) * cos(angle_rad);

// ---- 震屏 ----
if (shake_time > 0) {
    shake_time -= Dt_math_scr(1);
    gui_x += random_range(-shake_intensity[0], shake_intensity[0]);
    gui_y += random_range(-shake_intensity[1], shake_intensity[1]);
}

// ---- 键盘控制（缩放） ----
if (keyboard_check_pressed(ord("Q"))) {
    cam_scale = max(cam_scale - 0.05, 0.3);
    surface_width = ceil(GAME_WIDTH * cam_scale * render_scale);
    surface_height = ceil(GAME_HEIGHT * cam_scale * render_scale);
    need_recreate = true;
}
if (keyboard_check_pressed(ord("E"))) {
    cam_scale = min(cam_scale + 0.05, 2.0);
    surface_width = ceil(GAME_WIDTH * cam_scale * render_scale);
    surface_height = ceil(GAME_HEIGHT * cam_scale * render_scale);
    need_recreate = true;
}