function Draw_character_icon(texture, subimg, draw_x, draw_y, scale, mirror = false) {
    if (texture == -1) return;

    var target_w = 300;
    var target_h = 150;

    var fw = sprite_get_width(texture);   // 单帧宽
    var fh = sprite_get_height(texture);  // 单帧高
    var draw_pos_x = fw / 2 * subimg;
    var left = draw_pos_x;
    var top  = 0;
    var cw   = fw / 2 + draw_pos_x;
    var ch   = fh;

    var xs = (target_w / fw) * scale;
    var ys = (target_h / ch) * scale;

    sprite_set_offset(texture, draw_pos_x, fh);

    // 目标绘制区域左上角
    var dx = draw_x - (target_w * scale) / 2;
    var dy = draw_y - (target_h * scale) / 2;

    if (mirror) {
        xs = -xs;
        // 负缩放时，绘制起点在右侧，需要左移一个绘制宽度
        dx = dx + (target_w * scale);
    }

    draw_sprite_part_ext(
        texture, 0,
        left, top, cw, ch,
        dx, dy,
        xs, ys,
        c_white, 1
    );

    draw_rectangle(draw_x + 2, draw_y + 2, draw_x - 2, draw_y - 2, false);
}