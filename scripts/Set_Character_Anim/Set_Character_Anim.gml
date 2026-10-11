function Set_Character_Anim(type_id,anim_name){
	var ds_map_key = ds_map_find_value(obj_fnf_main.Character_Ds_Map,type_id)
	ds_map_key.anim_name = anim_name
	ds_map_key.subimg = 0
	ds_map_key.Time_Remaining = 4
	return 1;
}