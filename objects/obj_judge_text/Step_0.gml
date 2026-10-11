/// @description
// 垂直移动：应用下落速度和加速度
y += down_y
// 计算下落加速度，使用缓动效果
down_y += ((4 + down_y_r) - down_y) / 12


time += 1

if time >= 15 {
    image_alpha -= 0.05
    if image_alpha <= 0 {
        instance_destroy(id)    
    }
}

if combo_note != obj_fnf_main.Main_Game_Inf.Combo_note {
	depth = 11	
}