/// @description
if anim_name = "idle" {
	if Get_Song_Music_Beat(0){
		subimg = 0	
	}
}
if Time_Remaining > 0 {
	Time_Remaining -= real(Get_Song_Music_Beat(0))
	Time_Remaining -= real(Get_Song_Music_Beat(1))
}
if Time_Remaining <= 0 {
	anim_name = "idle"	
}
Draw_data = ds_map_find_value(Character_Ds_Map,anim_name)
draw_texture_name = Draw_data.name