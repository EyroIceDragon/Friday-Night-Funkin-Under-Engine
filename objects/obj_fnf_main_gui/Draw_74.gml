/// @description 绘制GUI表面
if (!surface_exists(global.gui_surface)) exit;

// ---- 1. 先往 surface 画内容 ----
surface_set_target(global.gui_surface);

var w = surface_width;
var h = surface_height;

draw_set_color(c_white);
draw_text(20, 120, "GUI Surface");
draw_text(20, 150, "Size: " + string(w) + "x" + string(h));
draw_text(20, 180, "Scale: " + string(gui_scale));
draw_text(20, 210, "Window: " + string(window_frame_get_width()) + "x" + string(window_frame_get_height()));
draw_text(20, 240, "Sick : " + str(obj_fnf_main.Main_Game_Inf.sick));
draw_text(20, 270, "Good : " + str(obj_fnf_main.Main_Game_Inf.good));
draw_text(20, 300, "Bad : " + string(obj_fnf_main.Main_Game_Inf.bad));
draw_text(20, 330, "Shit : " + str(obj_fnf_main.Main_Game_Inf.shit));

// 中心十字
draw_set_color(c_red);
draw_line(w/2 - 50, h/2, w/2 + 50, h/2);
draw_line(w/2, h/2 - 50, w/2, h/2 + 50);
draw_set_color(c_white);

surface_reset_target();

if (angle == 0) {
    draw_surface_stretched(
        global.gui_surface,
        gui_x, gui_y,
        surface_width * gui_scale,
        surface_height * gui_scale
    );
} else {
    draw_surface_ext(
        global.gui_surface,
        gui_x, gui_y,
        gui_scale, gui_scale,
        angle, c_white, 1
    );
}

surface_set_target(global.gui_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();