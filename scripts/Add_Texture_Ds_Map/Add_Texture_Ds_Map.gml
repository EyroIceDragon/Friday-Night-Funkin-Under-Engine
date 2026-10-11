function Add_Texture_Ds_Map(file_array){
	var ds_map = ds_map_create()
	for (var i = 0;i < array_length(file_array);i ++) {
		var file_path = obj_init.game_directory + str(file_array[i])
		var file_name = File_Get_Name_No_Ext(file_path)
		var Add_Texture = sprite_add(file_path,1,0,0,0,0)
		ds_map_add(ds_map,file_name,Add_Texture)
	}
	
	return ds_map;
}