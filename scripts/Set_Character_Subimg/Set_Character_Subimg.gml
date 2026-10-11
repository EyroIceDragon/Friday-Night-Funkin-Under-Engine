
function Set_Character_Subimg(char_id,subimg){
	var char = ds_map_find_value(obj_fnf_main.Character_Ds_Map,char_id)
	char.subimg = subimg
	return true;
}