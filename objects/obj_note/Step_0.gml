/// @description
var time_ms = create_time - Get_Song_Time();
acc_time_ms = abs(create_time - Get_Song_Time());
y = (create_time - Get_Song_Time()) * Get_Game_Speed() + 100;

var sing_anim = ["singLEFT","singDOWN","singUP","singRIGHT"];

var must_press = 1;
if MustHitSection {
    must_press = (create_type > 3) ? 0 : 1;
} else {
    must_press = (create_type > 3) ? 1 : 0;
}

x = Get_Arrow_XY(note_type, must_press)[0];

// 玩家
if (must_press == 1 and !Get_BotPlay_Mode()) {   
    // --- 长按音符 ---
    if (create_legth != 0) {
        var dir_names_keep = ["left", "down", "up", "right"];
        var is_holding = Get_keyboard_scr(dir_names_keep[note_type]);
        
        var in_window = (acc_time_ms <= 135 || check_legth > 0) && (time_ms >= -135 || check_legth > 0);
        
        if (in_window) {
			
			
            // 按下判定（首次命中）
            if (is_holding && can_hit) {
				var arrow_obj = Get_Arrow_Obj(note_type, must_press);
				if (check_legth == 0 and can_hit and arrow_obj.check_note == 0) {
					obj_fnf_main.Main_Game_Inf.Combo_note++
	                Make_Judge(acc_time_ms);
					Add_NotalNotes();
	            }
                can_hit = false;
				
                if (arrow_obj != noone) {
                    arrow_obj.check_note = 1;
                    if (arrow_obj.subimg >= 2) {
                        arrow_obj.subimg = 0;
                    }
                }
                if Get_Character_Subimg(1) >= 4{
					keep_check = true;
					Set_Character_Subimg(1,0)	
				}
                Set_Character_Anim(must_press, sing_anim[note_type]);
            }else{
				keep_check = false;	
			}
            
            if (!can_hit && is_holding) {
                var held_ms = Get_Song_Time() - create_time;
                if (held_ms < 0) held_ms = 0;
                if (held_ms > create_legth) held_ms = create_legth;
                
                check_legth = held_ms;
                
                if (check_legth >= create_legth && !sustain_finished) {
                    sustain_finished = true;
                }
            }
        }

        if (time_ms <= -135 && check_legth == 0 and long_note_miss = false) {
            obj_fnf_main.Main_Game_Inf.Combo_note = 0;
            obj_fnf_main.Main_Game_Inf.miss++;
			long_note_miss = true
			Add_NotalNotes();
            Do_Miss_Note();
            
        }
        
        if (!is_holding && check_legth > 0 && check_legth < create_legth - 10 && !sustain_finished) {
            obj_fnf_main.Main_Game_Inf.Combo_note = 0;
            obj_fnf_main.Main_Game_Inf.miss++;
			long_note_miss = true
            Do_Miss_Note();
            //instance_destroy(id);
        }
		
		if (check_legth >= create_legth - 10) {
            instance_destroy(id);
        }
    }
    // --- 单点音符 ---
    if (create_legth == 0) {
        var dir_names = ["left_pressed", "down_pressed", "up_pressed", "right_pressed"];
        
        if (can_hit && acc_time_ms <= 135 && time_ms >= -135) {
            if (Get_keyboard_scr(dir_names[note_type])) {
                Set_Character_Anim(must_press, sing_anim[note_type]);
                var arrow_obj = Get_Arrow_Obj(note_type, must_press);
                if (arrow_obj != noone) {
                    arrow_obj.check_note = 1;
                    arrow_obj.subimg = 0;
                }
                obj_fnf_main.Main_Game_Inf.Combo_note++;
                Make_Judge(acc_time_ms);
				Add_NotalNotes();
                instance_destroy(id);
            }
        } else if (time_ms <= -135) {
            obj_fnf_main.Main_Game_Inf.Combo_note = 0;
            obj_fnf_main.Main_Game_Inf.miss++;
            Do_Miss_Note();
			Add_NotalNotes();
            instance_destroy(id);
        }
    }
}

// 机器人 BotPlay
if (must_press == 1 and Get_BotPlay_Mode()) {
	acc_time_ms = 0
    if (y <= 100 && create_legth == 0) {
        var arrow_obj = Get_Arrow_Obj(note_type, must_press);
        Set_Character_Anim(must_press, sing_anim[note_type]);
        if (arrow_obj != noone) {
            arrow_obj.check = 1;
            arrow_obj.check_note = 1;
            arrow_obj.subimg = 0;
        }
		show_debug_message("Check")
		obj_fnf_main.Main_Game_Inf.Combo_note++
		Add_NotalNotes();
		Make_Judge(acc_time_ms);
        instance_destroy(id);
    }
    
    if (create_legth > 0 && y <= 100) {
		var arrow_obj = Get_Arrow_Obj(note_type, must_press);
		if (check_legth == 0 and can_hit and arrow_obj.check_note == 0) {
			obj_fnf_main.Main_Game_Inf.Combo_note++
			Add_NotalNotes();
	        Make_Judge(acc_time_ms);
	    }
        if (check_legth == 0) Set_Character_Anim(must_press, sing_anim[note_type]);
        if (arrow_obj != noone) {
            arrow_obj.check = 1;
            arrow_obj.check_note = 1;
			if (arrow_obj.subimg >= 2) {
                arrow_obj.subimg = 0;
            }
        }
        if Get_Character_Subimg(0) >= 4{
			keep_check = true
			Set_Character_Subimg(0,0)	
		}
        var held_ms = Get_Song_Time() - create_time;
        if (held_ms < 0) held_ms = 0;
        check_legth = held_ms;
        if (check_legth >= create_legth && !sustain_finished) sustain_finished = true;
		if (check_legth >= create_legth - 10) instance_destroy(id); 
    }
}

// 对手
if (must_press == 0) {
    // 单点音符
    if (y <= 100 && create_legth == 0) {
        var arrow_obj = Get_Arrow_Obj(note_type, must_press);
        Set_Character_Anim(must_press, sing_anim[note_type]);
        if (arrow_obj != noone) {
            arrow_obj.check = 1;
            arrow_obj.check_note = 1;
            arrow_obj.subimg = 0;
        }
        instance_destroy(id);
    }
    
    // 长按音符
    if (create_legth > 0 && y <= 100) {
        if (check_legth == 0) {
            Set_Character_Anim(must_press, sing_anim[note_type]);
        }
        var arrow_obj = Get_Arrow_Obj(note_type, must_press);
        if (arrow_obj != noone) {
            arrow_obj.check = 1;
            arrow_obj.check_note = 1;
			if (arrow_obj.subimg >= 2) {
                arrow_obj.subimg = 0;
            }
        }
        if Get_Character_Subimg(0) >= 4{
			keep_check = true
			Set_Character_Subimg(0,0)	
		}
        var held_ms = Get_Song_Time() - create_time;
        if (held_ms < 0) held_ms = 0;
        check_legth = held_ms;
        
        if (check_legth >= create_legth && !sustain_finished) {
            sustain_finished = true;
        }
		
		if (check_legth >= create_legth - 10) {
            instance_destroy(id);
        }
    }
}

if (y <= -800 && create_legth == 0) {instance_destroy(id);}

if (create_legth > 0) {
    var tail_y = 0 - create_legth * Get_Game_Speed();
    if (tail_y >= y) {
		instance_destroy(id);
    }
}