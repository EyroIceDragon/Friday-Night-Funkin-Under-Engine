/// @description 初始化GUI表面和窗口

// ========== 游戏分辨率 ==========
GAME_WIDTH = 1366;
GAME_HEIGHT = 768;

// ========== 性能设置 ==========
render_scale = 1;  // 🔥 降低分辨率提升性能

// ========== 创建GUI表面 ==========
surface_width = ceil(GAME_WIDTH * render_scale);
surface_height = ceil(GAME_HEIGHT * render_scale);
global.cam_surface = surface_create(surface_width, surface_height);

// ========== 变换变量 ==========
gui_x = 0;
gui_y = 0;
cam_x = 0;
cam_y = 0;
gui_scale = 1;
cam_scale = 1.0;  // 相对GAME_WIDTH的缩放
angle = 0;
shake_time = 0;
gui_scale_change = 0;
shake_intensity = [0, 0];
need_recreate = false;



bloom_effect = 1.0;
bloom_brightness = shader_get_uniform(Shader_Bloom, "brightness");
bloom_directions = shader_get_uniform(Shader_Bloom, "directions");
bloom_quality = shader_get_uniform(Shader_Bloom, "quality");
bloom_size = shader_get_uniform(Shader_Bloom, "size");

