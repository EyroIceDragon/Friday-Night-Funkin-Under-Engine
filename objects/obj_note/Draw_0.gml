/// @description
if y >= 1300 exit;
if !surface_exists(global.gui_surface) exit;
surface_set_target(global.gui_surface);

// 长按音符绘制（始终绘制，不依赖 press 状态）
if (create_legth != 0) {
    // press 参数表示是否显示"按压"效果
    var press = (check_legth != 0);
    
    //switch (note_type) {
    //    case 0: Draw_Long_Notes("purple", x, y, check_legth, create_legth, press); break;
    //    case 1: Draw_Long_Notes("blue", x, y, check_legth, create_legth, press); break;
    //    case 2: Draw_Long_Notes("green", x, y, check_legth, create_legth, press); break;
    //    case 3: Draw_Long_Notes("red", x, y, check_legth, create_legth, press); break;
    //}
	draw_set_color(c_white);
	if !press {
		switch (note_type) {
	        case 0: Draw_Notes("purple", x, y); break;
	        case 1: Draw_Notes("blue", x, y); break;
	        case 2: Draw_Notes("green", x, y); break;
	        case 3: Draw_Notes("red", x, y); break;
	    }
	}
	draw_set_color(c_red);
	var _speed = Get_Game_Speed();
    
    var _remain_ms = create_legth - check_legth;
    if (_remain_ms < 0) _remain_ms = 0;
    var _remain_px = _remain_ms * _speed;
	if check_legth < create_legth {
		if (check_legth != 0 and long_note_miss = false) {
		    draw_line_width(x, 100, x, 100 + _remain_px, 6);
		}else{
			draw_line_width(x, y + check_legth * _speed, x, y + create_legth * _speed, 6);
		}
	}
}
draw_set_color(c_white);
// 单点音符绘制
if (check_legth == 0 && create_legth == 0) {
    draw_set_color(c_white);
    switch (note_type) {
        case 0: Draw_Notes("purple", x, y); break;
        case 1: Draw_Notes("blue", x, y); break;
        case 2: Draw_Notes("green", x, y); break;
        case 3: Draw_Notes("red", x, y); break;
    }
}

draw_set_color(c_white);
//draw_text_transformed(x, y,create_legth - check_legth,3,3,0)
//draw_text(x, y, can_hit);
//draw_text_transformed(x, y,create_time - Get_Song_Time(),3,3,0)

surface_reset_target();