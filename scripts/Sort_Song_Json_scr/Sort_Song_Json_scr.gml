function Sort_Song_Json_scr(json_datas){
	json_data = json_datas; // 假设传入的是解析好的 ds_map 或 struct
    
    // 获取所有 section
    var notes_array = json_data.song.notes;
    var total_sections = array_length(notes_array);
    
    // 遍历每个 section
    for (var i = 0; i < total_sections; i++) {
        var section = notes_array[i];
        var section_notes = section.sectionNotes;
        var note_count = array_length(section_notes);
        
        // 如果这个 section 没有音符，跳过
        if (note_count == 0) continue;
        
        // 对 sectionNotes 按时间（每个音符数组的第一个元素）进行冒泡排序
        for (var j = 0; j < note_count - 1; j++) {
            for (var k = 0; k < note_count - 1 - j; k++) {
                // 比较两个音符的时间
                if (section_notes[k][0] > section_notes[k + 1][0]) {
                    // 交换整个音符数组
                    var temp = section_notes[k];
                    section_notes[k] = section_notes[k + 1];
                    section_notes[k + 1] = temp;
                }
            }
        }
        
        // 将排序后的 sectionNotes 存回（其实可以直接修改，因为是引用）
        // 如果你的 json_data 是 ds_map，需要重新赋值
        // 如果是 struct，直接修改即可
    }
    
    // 返回排序后的数据（如果需要）
	//show_debug_message(json_data)
    return json_data;
}