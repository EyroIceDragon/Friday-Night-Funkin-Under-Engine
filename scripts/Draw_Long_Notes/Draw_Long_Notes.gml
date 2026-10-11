function Draw_Long_Notes(name, _x, _y, press_long, all_long, press) {
    var x_pos = real(_x);
    var y_pos = real(_y);
    var scale = 0.75;
    
    // 获取纹理数据
    var base_data = ds_map_find_value(obj_fnf_main.Note_Asseats_Ds_Map, name)[0].attributes;
    var hold_data = ds_map_find_value(obj_fnf_main.Note_Asseats_Ds_Map, name + " hold piece")[0].attributes;
    var end_data = ds_map_find_value(obj_fnf_main.Note_Asseats_Ds_Map, name + " hold end")[0].attributes;
    
    var base_w = real(base_data.width) * scale;
    var base_h = real(base_data.height) * scale;
    var hold_w = real(hold_data.width) * scale;
    var hold_h = real(hold_data.height) * scale;
    var end_w = real(end_data.width) * scale;
    var end_h = real(end_data.height) * scale;
    
    // 总长度（像素）
    var total_len = real(all_long) * Get_Game_Speed();
    var pressed_len = real(press_long);
    
    // 限制已按长度
    if (pressed_len > total_len) pressed_len = total_len;
    if (pressed_len < 0) pressed_len = 0;
    
    // 计算进度
    var progress = 0;
    if (total_len > 0) {
        progress = pressed_len / total_len;
    }
    
    // ========== 绘制从顶部消失的长条 ==========
    
    // 1. 绘制头部
    var head_x = x_pos - (base_w / 2);
    var head_y = y_pos;
    
    // 头部裁剪
    var head_crop = progress * base_h;
    if (head_crop < base_h) {
        draw_sprite_part_ext(
            obj_fnf_main.Note_Texture,
            0,
            real(base_data.x),
            real(base_data.y) + head_crop / scale,
            real(base_data.width),
            (base_h - head_crop) / scale,
            head_x,
            head_y + head_crop,
            scale,
            scale,
            c_white,
            1
        );
    }
    
    // 2. 绘制中间部分
    var body_start_y = head_y + base_h;
    var body_total = total_len - base_h;
    
    if (body_total > 0) {
        var body_pressed = pressed_len - base_h;
        if (body_pressed < 0) body_pressed = 0;
        
        var remain_body = body_total - body_pressed;
        if (remain_body > 0) {
            var body_x = x_pos - (hold_w / 2);
            var drawn = 0;
            var crop_offset = body_pressed;
            
            while (drawn < remain_body) {
                var segment_h = min(hold_h, remain_body - drawn);
                var crop_top = 0;
                
                // 第一段可能被部分裁剪
                if (drawn == 0 && crop_offset > 0) {
                    var offset_in_seg = crop_offset % hold_h;
                    if (offset_in_seg > 0) {
                        crop_top = offset_in_seg / scale;
                        segment_h = hold_h - offset_in_seg;
                        if (segment_h > remain_body - drawn) {
                            segment_h = remain_body - drawn;
                        }
                    }
                }
                
                // 最后一段可能不完整
                if (drawn + segment_h >= remain_body && segment_h < hold_h) {
                    crop_top = (hold_h - segment_h) / scale;
                }
                
                var draw_y = body_start_y + drawn;
                if (drawn == 0 && crop_offset > 0) {
                    draw_y = body_start_y + drawn - (crop_offset % hold_h);
                }
                
                draw_sprite_part_ext(
                    obj_fnf_main.Note_Texture,
                    0,
                    real(hold_data.x),
                    real(hold_data.y) + crop_top,
                    real(hold_data.width),
                    segment_h / scale,
                    body_x,
                    draw_y,
                    scale,
                    scale,
                    c_white,
                    1
                );
                
                drawn += segment_h;
            }
        }
        
        // 3. 绘制尾部
        var remain_body_for_end = body_total - body_pressed;
        if (remain_body_for_end > 0) {
            var end_draw_h = min(end_h, remain_body_for_end);
            var end_crop = 0;
            if (end_draw_h < end_h) {
                end_crop = (end_h - end_draw_h) / scale;
            }
            
            var end_y = body_start_y + remain_body_for_end - end_draw_h;
            
            draw_sprite_part_ext(
                obj_fnf_main.Note_Texture,
                0,
                real(end_data.x),
                real(end_data.y) + end_crop,
                real(end_data.width),
                end_draw_h / scale,
                body_x,
                end_y,
                scale,
                scale,
                c_white,
                1
            );
        }
    }
}