if !surface_exists(global.cam_surface) exit;
//if Get_Song_Music_Beat(0) bloom_effect = 2.0
bloom_effect -= (0 + bloom_effect)/40
if bloom_effect != 0 {
shader_set(Shader_Bloom);
	var size = max(bloom_effect - 1, 0) * 9;
	var brightness = max(bloom_effect, 1);
	shader_set_uniform_f(bloom_brightness, brightness);
	shader_set_uniform_f(bloom_directions, 2);
	shader_set_uniform_i(bloom_quality, 4);
	shader_set_uniform_f(bloom_size, size);
}
// Step事件
if (keyboard_check_pressed(ord("1"))) bloom_effect = 1.0;
if (keyboard_check_pressed(ord("2"))) bloom_effect = 1.5;
if (keyboard_check_pressed(ord("3"))) bloom_effect = 2.0;
if (keyboard_check_pressed(ord("4"))) bloom_effect = 2.5;
if (keyboard_check_pressed(ord("5"))) bloom_effect = 3.0;
gpu_set_texfilter(true);   // 关插值，更快（可选）

if (angle == 0) {
    draw_surface_stretched(
        global.cam_surface,
        gui_x, gui_y,
        surface_width * gui_scale,
        surface_height * gui_scale
    );
} else {
    draw_surface_ext(
        global.cam_surface,
        gui_x, gui_y,
        gui_scale, gui_scale,
        angle, c_white, 1
    );
}

gpu_set_texfilter(true);

surface_set_target(global.cam_surface);
//draw_clear_alpha(c_black, 1);
draw_set_colour(c_black)
draw_rectangle(0,0,surface_width,surface_height,0)
draw_set_color(c_white);
surface_reset_target();
shader_reset();