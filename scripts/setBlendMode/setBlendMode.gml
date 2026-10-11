function setBlendMode(Texture_id,mix){
	var data = ds_map_find_value(obj_fnf_main.Stages_Ds_Map,Texture_id)
	data.Mix = mix
	ds_map_delete(obj_fnf_main.Stages_Ds_Map,Texture_id)
	ds_map_add(obj_fnf_main.Stages_Ds_Map,Texture_id,data)
	return 1
}