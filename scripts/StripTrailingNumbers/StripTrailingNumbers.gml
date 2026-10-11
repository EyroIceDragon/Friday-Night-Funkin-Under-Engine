function StripTrailingNumbers(_str) {
    var len = string_length(_str);
    
    for (var i = len; i > 0; i--) {
        var char = string_char_at(_str, i);
        if (char < "0" || char > "9") {
            if (i < len) {
                return string_copy(_str, 1, i);
            }
            return _str;
        }
    }
    return _str;
}