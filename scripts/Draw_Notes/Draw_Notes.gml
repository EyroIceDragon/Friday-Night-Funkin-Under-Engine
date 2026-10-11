function Draw_Notes(name,_x,_y){
	var draw_data = ds_map_find_value(obj_fnf_main.Note_Asseats_Ds_Map,name)[0].attributes
	Draw_Texture(obj_fnf_main.Note_Texture,_x,_y,draw_data.x,draw_data.y,draw_data.width,draw_data.height,0.75)
}