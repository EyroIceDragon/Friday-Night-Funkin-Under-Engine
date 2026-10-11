
function Get_Character_Subimg(char_id){
	var char = ds_map_find_value(obj_fnf_main.Character_Ds_Map,char_id)
	return char.subimg;
}