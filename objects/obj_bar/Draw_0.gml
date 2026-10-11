if !surface_exists(global.gui_surface) exit;
surface_set_target(global.gui_surface);

var bar_x = 1366/2 - sprite_get_width(Bar_Texture)/2;
var bar_y = 687;
var bar_w = sprite_get_width(Bar_Texture);
var bar_h = sprite_get_height(Bar_Texture);

var fill_w = bar_w * ((max_health-i_health) / max_health);

draw_sprite_ext(Bar_Texture, 0, bar_x, bar_y, 1, 1, 0, Get_Bar_Color(1), 1);

draw_sprite_part_ext(Bar_Texture, 0,0, 0, fill_w, bar_h,bar_x, bar_y,1, 1,Get_Bar_Color(0), 1);

var subimg0 = (i_health >= 80) ? 1 : 0;
var subimg1 = (i_health <= 20) ? 1 : 0;

var icon_x = bar_x + fill_w;
var icon_y = bar_y + bar_h / 2;
Draw_character_icon(obj_fnf_main.Character_heath_icon[0], subimg0, icon_x, icon_y, icon_scale, false);
Draw_character_icon(obj_fnf_main.Character_heath_icon[1], subimg1, icon_x, icon_y, icon_scale, true);

draw_set_color(c_white);
gpu_set_tex_filter(false);
var rank = Get_Accuracy_Rank(acc)
var _txt = scribble(
    "Accuracy:" + str(acc) + "% " + rank + "      " +
    "Misses:" + str(Get_Miss_Note()) + "      " +
    "Score:" + str(obj_fnf_main.Sorce)
)
.starting_format("Font_Gui", c_white)
.scale(small_bar_scale)
.align(fa_center, fa_top)
.sdf_outline(c_black, 2);

_txt.draw(1366/2, 710);
surface_reset_target();