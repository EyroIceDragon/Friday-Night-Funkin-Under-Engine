/// @description
if !surface_exists(global.gui_surface) exit;

surface_set_target(global.gui_surface);

draw_set_color(c_white)
var show = "sick"
if chose_show = 1 {
    // 数字模式：显示0-9的数字
    switch show_number {
        case 0: show="num0";break;    
        case 1: show="num1";break;    
        case 2: show="num2";break;    
        case 3: show="num3";break;    
        case 4: show="num4";break;    
        case 5: show="num5";break;    
        case 6: show="num6";break;    
        case 7: show="num7";break;    
        case 8: show="num8";break;    
        case 9: show="num9";break;    
    }
}else{
    switch show_number {
        case "sick": show="sick";break;    
        case "good": show="good";break;    
		case "bad": show="bad";break;  
		case "shit": show="shit";break;  
    }
}


draw_sprite_ext(ds_map_find_value(obj_fnf_main.Judge_Texture_Ds_Map,show),0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)

surface_reset_target()