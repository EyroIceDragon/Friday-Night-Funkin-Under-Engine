function Add_Health(i){
	obj_fnf_main.health_bar_obj.i_health += i
	obj_fnf_main.health_bar_obj.i_health = clamp(obj_fnf_main.health_bar_obj.i_health,0,obj_fnf_main.health_bar_obj.max_health)
}