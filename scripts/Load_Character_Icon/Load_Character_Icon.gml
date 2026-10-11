function Load_Character_Icon(character_icon_name){
	var path = obj_init.game_directory + "assets/images/icons/icon-" + character_icon_name + ".png"
	show_debug_message(path)
	var spr = sprite_add(path,0,0,1,0,75)
	show_debug_message(spr)
	return spr
}