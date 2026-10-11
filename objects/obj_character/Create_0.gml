/// @description
Character_Ds_Map = Create_Character_Anim(Json_Load(obj_init.game_directory + "assets/data/characters/bf.json"))
Character_Texture_Data = FindSubTexture(Load_Xml_File(obj_init.game_directory + "assets/images/characters/bf.xml"))
Character_Texture = ds_map_find_value(Character_Ds_Map,"image")

anim_name = "idle"
draw_texture_name = "idle"
Draw_data = ds_map_find_value(Character_Ds_Map,anim_name)
Time_Remaining = 1
subimg = 0
show_message(ds_map_find_value(Character_Ds_Map,"idle"))
max_subimg = 0
