function Load_Xml_File(filename) {
    var file = file_text_open_read(filename);
    if (file == -1) {
        show_debug_message("无法打开文件: " + filename);
        return undefined;
    }
    
    var content = "";
    var line;
    while (!file_text_eof(file)) {
        line = file_text_readln(file);
        content += line;  // 不加换行符也可以，XML结构由标签决定
    }
    file_text_close(file);
    
    // SnapFromXML 会返回解析后的 Struct
    var result = SnapFromXML(content);
    if (is_undefined(result)) {
        show_debug_message("XML解析失败: " + filename);
    }
    return result;
}