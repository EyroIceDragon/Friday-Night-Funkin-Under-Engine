function FindSubTexture(json_data){
	var ds_map = ds_map_create();
    var ImagePath = json_data.children[0].attributes.imagePath;
    var ImagePath_Children = json_data.children[0].children;
    var count = array_length(ImagePath_Children);
    
    if (count == 0) return ds_map;

    var last_name = StripTrailingNumbers(ImagePath_Children[0].attributes.name);
    var buff_array = [];
    
    for (var list_children = 0; list_children < count; list_children++) {
        var data_all = ImagePath_Children[list_children];
        var data = data_all.attributes;
        var name_all = data.name;
        var _name = StripTrailingNumbers(name_all);
        
        if (_name == last_name) {
            array_push(buff_array, data_all);
        } else {
            ds_map_add(ds_map, last_name, buff_array);
            buff_array = [];
            array_push(buff_array, data_all);
            last_name = _name;
        }
    }

    if (array_length(buff_array) > 0) {
        ds_map_add(ds_map, last_name, buff_array);
    }
    
    return ds_map;
}