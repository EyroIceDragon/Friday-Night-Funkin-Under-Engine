function Load_All_File_Same_Extension(File_Path, Extension) {
    if (File_Path == "" || File_Path == undefined) {
        show_debug_message("错误: 文件路径为空");
        return -1;
    }
    
    if (Extension == "" || Extension == undefined) {
        show_debug_message("错误: 扩展名为空");
        return -1;
    }
    
    if (string_char_at(File_Path, string_length(File_Path)) != "/") {
        File_Path += "/";
    }
    
    if (string_char_at(Extension, 1) != ".") {
        Extension = "." + Extension;
    }
    
    if (!directory_exists(File_Path)) {
        show_debug_message("错误: 文件夹不存在 - " + File_Path);
        return -1;
    }
    
    var search_pattern = File_Path + "*" + Extension;
    var file_list = [];
    var file_name = file_find_first(search_pattern, fa_archive);
    
    while (file_name != "") {
        if (file_name != "." && file_name != "..") {
            array_push(file_list, file_name);
        }
        file_name = file_find_next();
    }
    file_find_close();
    
    return file_list;
}