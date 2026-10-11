/// @description
Offset_x = 0
Offset_y = 0
var _speed = 5;  // 移动速度
if keyboard_check(vk_alt) {
	if (keyboard_check(ord("W"))) cam_y += _speed;
	if (keyboard_check(ord("S"))) cam_y -= _speed;
	if (keyboard_check(ord("A"))) cam_x += _speed;
	if (keyboard_check(ord("D"))) cam_x -= _speed;

}