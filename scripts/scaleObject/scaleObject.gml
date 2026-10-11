function scaleObject(Texture_id,x_scale,y_scale){
	var data = ds_map_find_value(obj_fnf_main.Stages_Ds_Map,Texture_id)
	data.x_scale = x_scale
	data.y_scale = y_scale
	ds_map_delete(obj_fnf_main.Stages_Ds_Map,Texture_id)
	ds_map_add(obj_fnf_main.Stages_Ds_Map,Texture_id,data)
	return 1
}