/// @description 初始化GUI表面和窗口

// ========== 游戏分辨率 ==========
GAME_WIDTH = 1366;
GAME_HEIGHT = 768;

// ========== 创建GUI表面 ==========
global.gui_surface = surface_create(GAME_WIDTH, GAME_HEIGHT);

// ========== 变换变量 ==========
gui_x = 0;
gui_y = 0;
gui_scale = 1;
angle = 0;
shake_time = 0;
gui_scale_change = 0;
shake_intensity = [0, 0];

// ========== 表面尺寸管理 ==========
surface_width = GAME_WIDTH;
surface_height = GAME_HEIGHT;
need_recreate = false;




