/// @description
if !surface_exists(global.cam_surface) exit;
surface_set_target(global.cam_surface);
for (var draw_list = 0;draw_list < array_length(draw_list_stages_noanim);draw_list ++) {
	var data = draw_list_stages_noanim[draw_list]
	var draw_Texture = data.Texture
	sprite_set_offset(draw_Texture, -data.x, -data.y)
	var draw_x = Get_Cam_X()
	var draw_y = Get_Cam_Y()
	var draw_x_scale = data.x_scale
	var draw_y_scale = data.y_scale
	var draw_x_move = data.x_move
	var draw_y_move = data.y_move
	var draw_y_mix = data.Mix
	gpu_set_blendmode(draw_y_mix)
	draw_sprite_ext(draw_Texture,0,draw_x,draw_y,draw_x_scale,draw_y_scale,0,c_white,1)
}
gpu_set_blendmode(bm_normal)

surface_reset_target();