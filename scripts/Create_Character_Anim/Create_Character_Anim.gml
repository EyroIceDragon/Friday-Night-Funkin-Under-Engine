function Create_Character_Anim(json_data){

	var ds_map = ds_map_create()
	var camera_position = json_data.camera_position
	var flip_x = json_data.flip_x
	var healthbar_colors = json_data.healthbar_colors
	var healthicon = json_data.healthicon
	var no_antialiasing = json_data.no_antialiasing
	var position = json_data.position
	var scale = json_data.scale
	var sing_duration = json_data.sing_duration
	var image_path = json_data.image
	var image =  sprite_add(obj_init.game_directory + "assets/images/" + json_data.image + ".png",1,0,!no_antialiasing,0,0)
	ds_map_add(ds_map, "no_antialiasing", no_antialiasing)
    ds_map_add(ds_map, "flip_x", flip_x)
    ds_map_add(ds_map, "scale", scale)
    ds_map_add(ds_map, "sing_duration", sing_duration)
    ds_map_add(ds_map, "healthicon", healthicon)
	ds_map_add(ds_map, "image_path", image_path)
    ds_map_add(ds_map, "image", image)
    ds_map_add(ds_map, "position", position)
    ds_map_add(ds_map, "camera_position", camera_position)
    ds_map_add(ds_map, "healthbar_rgb", healthbar_colors)
	
	for (var i = 0; i < array_length(json_data.animations); i++) {
		var data = json_data.animations[i]
		ds_map_add(ds_map,data.anim,data)
	}
	
	return ds_map
}