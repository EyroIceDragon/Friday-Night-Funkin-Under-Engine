// 顶部对齐的纹理绘制函数（用于长条拼接）
function Draw_Texture_Top(Png_Texture, draw_x, draw_y, x, y, width, height, scale) {
    // 直接绘制，不进行中心对齐
    draw_sprite_general(Png_Texture, 0, x, y, width, height, 
                        draw_x, draw_y,  // 直接使用传入坐标作为左上角
                        scale, scale, 0, 
                        c_white, c_white, c_white, c_white, 1);
}

// 顶部对齐的裁剪绘制函数
function Draw_Texture_Part_Top(Png_Texture, draw_x, draw_y, x, y, width, height, scale, crop_top) {
    var draw_w = width * scale;
    var draw_h = (height - crop_top) * scale;
    
    draw_sprite_part_ext(
        Png_Texture,
        0,
        x,
        y + crop_top,
        width,
        height - crop_top,
        draw_x,                 // 直接使用传入坐标作为左上角
        draw_y,
        scale,
        scale,
        c_white,
        0.8
    );
}