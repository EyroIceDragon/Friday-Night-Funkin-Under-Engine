/// @description
if create_type <= 3 {
	note_type = create_type 
}else{
	note_type = create_type - 4
}
var must_press = 1
if MustHitSection {
	if create_type > 3 {
		 must_press = 0
	}
}else{
	if create_type > 3 {
		 must_press = 1
	}else{
		must_press = 0
	}	
}

// 遍历所有其他音符
with (obj_note) {
    // 跳过自己
    if (id == other.id) continue;
        
    // 检查是否是同一方向且同样需要玩家按的音符
    if (note_type == other.note_type && must_press == 1) {
        // 如果其他音符的判定时间更小（更接近判定线），当前音符不能触发
        if (other.acc_time_ms > acc_time_ms) {
            other.can_hit = false;
            break;
        }
    }
}