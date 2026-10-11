function Get_Audio_File(file_path) {
    if (!file_exists(file_path)) {
        show_debug_message("音频文件不存在: " + file_path);
        return -1;
    }
    
    try {
        // 使用 audio_create_stream 加载外部音频文件
        var soundIndex = audio_create_stream(file_path);
		var sound = audio_play_sound(soundIndex,0,0)
        audio_pause_sound(sound);

        return sound;
    } catch(e) {
        show_debug_message("加载音频失败: " + string(e));
        return -1;
    }
}