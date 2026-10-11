function Json_Load(_filename) {
    if (!file_exists(_filename)) {
        return undefined;
    }
    var _buffer = buffer_load(_filename);
    var _json_content = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
    try {
        return json_parse(_json_content);
    } catch (_) {
        show_debug_message("JSON LOAD ERROR: " + _filename);
        return undefined;
    }
}