function Create_Arrow(note_type,note_player_type){
	var obj = instance_create_depth(100,100,0,obj_arrow)
	obj.note_type = note_type
	obj.note_type_player = note_player_type
	return obj;
}