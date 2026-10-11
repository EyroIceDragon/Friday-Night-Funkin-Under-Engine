function Add_song_music(array,music_array){
	if is_array(array) {
		for (var i=0;i<array_length(music_array);i++){
			array_push(array,Get_Audio_File(music_array[i]))
		}
		return array
	}
	return []
}