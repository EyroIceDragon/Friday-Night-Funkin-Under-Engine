function makeLuaSprite(Texture_id,Texture,x,y){
	var ds_map = obj_fnf_main.Stages_Ds_Map
	var json_data = {"x":0,"y":0,"x_move":1,"y_move":1,"x_scale":1,"y_scale":1,"Mix": bm_normal,"Texture": undefined}
	var Texture_Path = obj_init.game_directory + "assets/images/" + str(Texture)+ ".png"
	var Texture_Load = sprite_add(Texture_Path,1,0,1,0,0)
	if Texture_Load == -1 {
		json_data.Texture = spr_error
		json_data.x = x
		json_data.y = y
		ds_map_add(ds_map,Texture_id,json_data)
		return 1
	}
	json_data.Texture = Texture_Load
	json_data.x = x
	json_data.y = y
	ds_map_add(ds_map,Texture_id,json_data)
	return 1
}