/// @description
enum RES {
    WIDTH = 1366,
    HEIGHT = 768,
    SCALE = 4
}
_camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, noone, -1, -1, RES.WIDTH / 2, RES.HEIGHT / 2);
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, _camera);
cam_scale = 1.5
shank_time = 0

pos_x = 590
pos_y = 580