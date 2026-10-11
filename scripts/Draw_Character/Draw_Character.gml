function Draw_Character(Character_Ds_data,Character_Ds_Map,Texture,name, _x,_y, frame = 0,off_char = 0, scale = 1,flip = false, color = c_white, alpha = 1){
    var anim_data = ds_map_find_value(Character_Ds_Map, name);
    var character_data = Character_Ds_data
	//show_debug_message(ds_map_find_value(Character_Ds_Map,off_char.name))
    if (anim_data == undefined) {
        return -1;
    }
    
    var frame_index = clamp(floor(frame), 0, array_length(anim_data) - 1);
    var frame_data = anim_data[frame_index];
    var attrs = frame_data.attributes;
    
    var sub_x = real(attrs.x);
    var sub_y = real(attrs.y);
    var sub_w = real(attrs.width);
    var sub_h = real(attrs.height);
    var frame_x = real(attrs.frameX);
    var frame_y = real(attrs.frameY);
    var frame_w = real(attrs.frameWidth);
    var frame_h = real(attrs.frameHeight);
    var off_x = character_data.offsets[0] + ds_map_find_value(Character_Ds_Map,off_char.name)[0].attributes.frameWidth/2;
	var off_y = character_data.offsets[1] + ds_map_find_value(Character_Ds_Map,off_char.name)[0].attributes.frameHeight;
    var xscale = flip ? -scale : scale;
    var yscale = scale;
    
	var draw_x = _x - frame_x - off_x + Get_Cam_X();
	var draw_y = _y - frame_y - off_y + Get_Cam_Y();
	
	draw_set_alpha(0.1)
    draw_roundrect(draw_x, draw_y, draw_x + sub_w * abs(xscale), draw_y + sub_h * yscale, 0);
	draw_set_alpha(1)
    return [draw_sprite_part_ext(Texture,0,  sub_x, sub_y, sub_w, sub_h,draw_x, draw_y, xscale, yscale,color,alpha),array_length(anim_data) - 1];
}