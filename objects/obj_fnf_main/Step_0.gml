/// @description
MusicTime = audio_sound_get_track_position(play_song_music[0])
SongMusicTime = audio_sound_get_track_position(play_song_music[0]) * 1000
NowCurrentBeat = (MusicTime / 60) * song_bpm;
game_test_time += 0.01

if keyboard_check_pressed(ord("Z")) {
	Set_Shake_Game_Gui_ext_scr(1,10,0)
}

if ((array_length(notes_data) > 0 ) and (array_length(notes_data) > notes_data_0)){
	var SectionNotes_Infmaintion = notes_data[notes_data_0];
	var SectionNotes_Array = notes_data[notes_data_0].sectionNotes; // 类似[[0,0,0],[0,0,0]]
	var MustHitSection = SectionNotes_Infmaintion.mustHitSection
	if array_length(SectionNotes_Array) > 0 {
		var note = SectionNotes_Array[notes_data_sectionNotes]
		if note[0] <= SongMusicTime + 3000{
			notes_data_sectionNotes ++
			//show_debug_message(note)

			var ins_note = instance_create_depth(-100,-100,-1,obj_note);
			ins_note.create_time = note[0]
			ins_note.create_type = note[1]
			ins_note.create_legth = note[2] / 2
			ins_note.MustHitSection = MustHitSection
		}	
		if array_length(SectionNotes_Array) <= notes_data_sectionNotes {
			notes_data_sectionNotes = 0
			notes_data_0 ++
		}
	}else{
		notes_data_0 ++
	}
	if (variable_struct_exists(SectionNotes_Infmaintion, "changeBPM") && SectionNotes_Infmaintion.changeBPM){
		song_bpm = SectionNotes_Infmaintion.bpm;
	}
}














