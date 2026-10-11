function addLuaSprite(Texture_id,top_draw){
	var data = ds_map_find_value(obj_fnf_main.Stages_Ds_Map,Texture_id)
	array_push(obj_fnf_main.stages.draw_list_stages_noanim,data)
	return 1;
}