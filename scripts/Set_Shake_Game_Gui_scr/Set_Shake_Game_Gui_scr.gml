function Set_Shake_Game_Gui_ext_scr(time,intensity_x,intensity_y){
	obj_fnf_main_gui.shake_time = time;
	obj_fnf_main_gui.shake_intensity[0] = intensity_x;
	obj_fnf_main_gui.shake_intensity[1] = intensity_y;
	return true;
}

function Set_Shake_Game_Gui_scr(time,intensity){
	obj_fnf_main_gui.shake_time = time;
	obj_fnf_main_gui.shake_intensity[0] = intensity;
	obj_fnf_main_gui.shake_intensity[1] = intensity;
	return true;
}