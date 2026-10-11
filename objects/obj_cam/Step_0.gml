/// @description
if shank_time >= 0 {
	shank_time --
	//set_camxy(random_range(-5,5) + camxy[0],random_range(-5,5) + camxy[1])
}else{
	//set_camxy(camxy[0],camxy[1])
}

var move_speed = 5;

// 方向键控制
//if (keyboard_check(vk_left)) {
//    pos_x -= move_speed;
//}
//if (keyboard_check(vk_right)) {
//    pos_x += move_speed;
//}
//if (keyboard_check(vk_up)) {
//    pos_y -= move_speed;
//}
//if (keyboard_check(vk_down)) {
//    pos_y += move_speed;
//}
//if (keyboard_check(ord("Q"))) {
//    cam_scale -= 0.1;
//}
//if (keyboard_check(ord("E"))) {
//    cam_scale += 0.1;
//}
// 应用摄像机位置
var _view_w = RES.WIDTH * cam_scale
var _view_h = RES.HEIGHT * cam_scale
camera_set_view_pos(_camera,(RES.WIDTH - _view_w)/2 + pos_x,(RES.HEIGHT - _view_h)/2 + pos_y)
camera_set_view_size(_camera,_view_w,_view_h)