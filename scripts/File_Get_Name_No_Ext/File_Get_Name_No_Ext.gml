function File_Get_Name_No_Ext(file_path){
	var name = File_Get_Name(file_path);
    var pos = string_last_pos(".", name);
    
    if (pos > 0) {
        return string_copy(name, 1, pos - 1);
    }
    return name;
}

function File_Get_Name(file_path) {

    var pos = max(string_last_pos("/", file_path), string_last_pos("\\", file_path));
    
    if (pos > 0) {
        return string_copy(file_path, pos + 1, string_length(file_path) - pos);
    }
    return file_path;
}