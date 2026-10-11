function setScrollFactor(Texture_id,x_move,y_move){
	var data = ds_map_find_value(obj_fnf_main.Stages_Ds_Map,Texture_id)
	data.x_move = x_move
	data.y_move = y_move
	ds_map_delete(obj_fnf_main.Stages_Ds_Map,Texture_id)
	ds_map_add(obj_fnf_main.Stages_Ds_Map,Texture_id,data)
	return 1
}