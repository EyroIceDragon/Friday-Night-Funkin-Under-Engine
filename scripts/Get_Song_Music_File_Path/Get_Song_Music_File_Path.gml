function Get_Song_Music_File_Path(music_name){
	var return_array = []
	var path = obj_init.game_directory + "assets/data/songs/" + str(music_name) + "/music/"
	var song_music_array = Load_All_File_Same_Extension(path,"ogg")
	if song_music_array = -1 return;
	for (var i=0;i < array_length(song_music_array);i++){
		var music_path = path + song_music_array[i]
		
		array_push(return_array,music_path)
	}
	show_message(return_array)
	return return_array;
}