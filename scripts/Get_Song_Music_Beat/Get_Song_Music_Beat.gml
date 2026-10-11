function Get_Song_Music_Beat(idx){
	switch idx {
		case 0: 
			return obj_fnf_main.SongMusicBeat[0]
		case 1: 
			return obj_fnf_main.SongMusicBeat[1]		
	}
	return false
}