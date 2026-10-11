function Load_External_Gml(filename){
	if (!file_exists(filename)) return undefined;
    
    var buffer = buffer_load(filename);
	if (buffer != -1) {
	    var gmlCode = buffer_read(buffer, buffer_string);
	    buffer_delete(buffer);
    
	    // 解析GML
	    var result = SnapFromGML(gmlCode,undefined, undefined, true);
		return result
	}
	return undefined;
}