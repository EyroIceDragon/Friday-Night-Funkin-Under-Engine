/// @description
var x_pos = 0
var scale_x = 1366 / 1280; // ≈ 1.0671875

if (note_type_player == 0) { // 对手侧
    switch(note_type) {
        case 0: x_pos = 135 * scale_x; break;
        case 1: x_pos = (135 + 115) * scale_x; break;
        case 2: x_pos = (135 + 230) * scale_x; break;
        case 3: x_pos = (135 + 345) * scale_x; break;
    }
} else if (note_type_player == 1) { // 玩家侧
    switch(note_type) {
        case 0: x_pos = 780 * scale_x; break;
        case 1: x_pos = (780 + 115) * scale_x; break;
        case 2: x_pos = (780 + 230) * scale_x; break;
        case 3: x_pos = (780 + 345) * scale_x; break;
    }
}

x = x_pos
if !note_type_player or Get_BotPlay_Mode()
{
	if 3 <= subimg +1{
		subimg = 2
		check = 0
		check_note = 0
	}else{
		subimg += Dt_math_scr(24)
	}	
}



if Get_BotPlay_Mode() exit
if !note_type_player exit;
var sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map,"left press")
switch (note_type) {
    case 0:
        sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "left press");
        if (Get_keyboard_scr("left")) {
            check = 1;
			if check_note = 1 {
				sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "left confirm");
			}
        } else {
            check = 0;
			check_note = 0;
        }
        break;
        
    case 1:
        sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "down press");
        if (Get_keyboard_scr("down")) {
            check = 1;
			if check_note = 1 {
				sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "down confirm");
			}
        } else {
            check = 0;
			check_note = 0;
        }
        break;
        
    case 2:
        sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "up press");
        if (Get_keyboard_scr("up")) {
            check = 1;
			if check_note = 1 {
				sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "up confirm");
			}
        } else {
            check = 0;
			check_note = 0;
        }
        break;
        
    case 3:
        sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "right press");
        if (Get_keyboard_scr("right")) {
            check = 1;
			if check_note = 1 {
				sub = Get_Texture_Array_Length(obj_fnf_main.Note_Asseats_Ds_Map, "right confirm");
			}
        } else {
            check = 0;
			check_note = 0;
        }
        break;
}
if note_type_player == 1 {
	if sub <= subimg +1{
		subimg = sub - 1
	}else{
		subimg += Dt_math_scr(24)
	}
}