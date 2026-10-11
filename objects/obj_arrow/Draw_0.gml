/// @description
if !surface_exists(global.gui_surface) exit;
surface_set_target(global.gui_surface);
draw_set_alpha(1)
draw_set_color(c_white)
switch (note_type) {
    case 0:
		if check == 0 {
			Draw_Arrow("arrowLEFT", x, y);
		}else if check == 1 {
			if check_note = 1 {
				Draw_Arrow_Press("left confirm",x, y,subimg)
			}else{
				Draw_Arrow_Press("left press",x, y,subimg)
			}
		}
        break;
    case 1:
		if check == 0 {
			Draw_Arrow("arrowDOWN", x, y);
		}else if check == 1 {
			if check_note = 1 {
				Draw_Arrow_Press("down confirm",x, y,subimg)
			}else{
				Draw_Arrow_Press("down press",x, y,subimg)
			}
		}
		break;
    case 2:
		if check == 0 {
			Draw_Arrow("arrowUP", x, y);
		}else if check == 1 {
			if check_note = 1 {
				Draw_Arrow_Press("up confirm",x, y,subimg)
			}else{
				Draw_Arrow_Press("up press",x, y,subimg)
			}
		}
		break;
    case 3:
		if check == 0 {
			Draw_Arrow("arrowRIGHT", x, y);
		}else if check == 1 {
			if check_note = 1 {
				Draw_Arrow_Press("right confirm",x, y,subimg)
			}else{
				Draw_Arrow_Press("right press",x, y,subimg)
			}
		}
        break;
}
draw_rectangle(x-2,y-2,x+2,y+2,0)
surface_reset_target()