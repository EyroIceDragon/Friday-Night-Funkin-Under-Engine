function Register_All_Gml_Functions(){
	SnapEnvGMLSetTokenFunction("sprite_add", sprite_add);
    SnapEnvGMLSetTokenFunction("ds_map_find_value", ds_map_find_value);
    SnapEnvGMLSetTokenFunction("ds_map_add", ds_map_add);
    SnapEnvGMLSetTokenFunction("ds_map_delete", ds_map_delete);
    SnapEnvGMLSetTokenFunction("array_push", array_push);
    SnapEnvGMLSetTokenFunction("show_debug_message", show_debug_message);
    
    SnapEnvGMLSetTokenFunction("makeLuaSprite", makeLuaSprite);
    SnapEnvGMLSetTokenFunction("setScrollFactor", setScrollFactor);
    SnapEnvGMLSetTokenFunction("scaleObject", scaleObject);
    SnapEnvGMLSetTokenFunction("addLuaSprite", addLuaSprite);
    SnapEnvGMLSetTokenFunction("setBlendMode", setBlendMode);
    
    SnapEnvGMLSetToken("bm_normal", bm_normal);
    SnapEnvGMLSetToken("bm_add", bm_add);
    SnapEnvGMLSetToken("spr_error", spr_error);
}