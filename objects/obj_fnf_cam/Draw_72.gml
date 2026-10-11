/// @description
if not surface_exists(global.cam_surface) {
	global.cam_surface = surface_create(window_get_width(),window_get_height())
}
draw_set_colour(c_black)
draw_rectangle(0,0,1368,768,0)