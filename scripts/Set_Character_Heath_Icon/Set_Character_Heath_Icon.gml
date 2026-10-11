function Set_Character_Heath_Icon(who,texture,color){
	if is_real(who) {
		who = clamp(who,0,1)
		obj_fnf_main.Character_heath_icon[who] = texture
		obj_fnf_main.Character_heath_color[who] = color
	}else{
		show_message("undefined who")	
	}
}