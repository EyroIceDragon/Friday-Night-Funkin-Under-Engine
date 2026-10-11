function Set_Character_Icon_Easy(char_name,char_id,icon_color){
	var texture = Load_Character_Icon(char_name)
	Set_Character_Heath_Icon(char_id,texture,make_colour_rgb(icon_color[0],icon_color[1],icon_color[2]))
	return true;
	
}