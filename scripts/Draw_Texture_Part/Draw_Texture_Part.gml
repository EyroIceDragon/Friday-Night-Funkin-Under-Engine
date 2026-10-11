function Draw_Texture_Part(Png_Texture, draw_x, draw_y, x, y, width, height, scale, crop_top) {
    // crop_top: 从顶部裁剪的像素数（纹理坐标）
    var draw_w = width * scale;
    var draw_h = (height - crop_top) * scale;
    
    draw_sprite_part_ext(
        Png_Texture,           // 精灵
        0,                      // 子图索引
        x,                      // 左裁剪（纹理坐标）
        y + crop_top,           // 上裁剪
        width,                  // 裁剪宽度
        height - crop_top,      // 裁剪高度
        draw_x,                 // 绘制X（中心对齐）
        draw_y,                 // 绘制Y（中心对齐）
        scale,                  // X缩放
        scale,                  // Y缩放
        c_white,                // 颜色
        1                       // 透明度
    );
}