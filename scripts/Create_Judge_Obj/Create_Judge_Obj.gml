function Create_Judge_Obj(Score,level){
	var scale = [0.5,0.5]
	var ins_char = noone
	var obj = obj_judge_text
	var text = Score
	var _x = 300
	var _y = 380
	var char_x = 0
	var char_y = 0
	if text < 100 {
		ins_char = instance_create_depth(char_x + _x,char_y + _y,0,obj)
		ins_char.show_number= 0
		ins_char.image_xscale = scale[0]
		ins_char.image_yscale = scale[1]
		ins_char.chose_show=1
		ins_char.y += random_range(-7,-10.0)
		char_x += 50	
			
		if text < 10 {
			ins_char = instance_create_depth(char_x + _x,char_y + _y,0,obj)
			ins_char.show_number = 0	
			ins_char.image_xscale = scale[0]
			ins_char.image_yscale = scale[1]
			ins_char.chose_show=1
			ins_char.y += random_range(-7,-10.0)
			char_x += 50	
		}
	}
	for (var i = 1; i <= string_length(text); i++){	
	    var char = string_char_at(text, i);
	    ins_char = instance_create_depth(char_x + _x,char_y + _y,0,obj)
		ins_char.show_number=char
		ins_char.image_xscale = scale[0]
		ins_char.image_yscale = scale[1]
		ins_char.chose_show=1
		ins_char.y += random_range(-7,-10.0)
		char_x += 50
	}
	
	ins_char = instance_create_depth(char_x + _x - 80,char_y + _y - 120,-14,obj)
	ins_char.image_xscale = scale[0] + 0.2
	ins_char.image_yscale = scale[1] + 0.2
	ins_char.show_number=level
	ins_char.chose_show=0
	ins_char.y += random_range(-7,-10.0)
	
}