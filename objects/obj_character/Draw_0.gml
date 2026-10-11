/// @description
if !surface_exists(global.cam_surface) exit;
surface_set_target(global.cam_surface);

max_subimg = Draw_Character(Draw_data,Character_Texture_Data,Character_Texture,draw_texture_name,x,y,subimg,ds_map_find_value(Character_Ds_Map,"idle"))[1]
if subimg < max_subimg {
	subimg += Dt_math_scr(Draw_data.fps)
}


draw_set_color(c_red)
draw_circle(x+ Get_Cam_X(),y+ Get_Cam_Y(),5,0)
draw_set_color(c_white)

surface_reset_target();