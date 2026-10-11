function Get_Arrow_Obj(note_type,note_player_type){
	var key = ds_map_find_value(obj_fnf_main.arrow_ds_map,note_player_type)
	return key[note_type];
}