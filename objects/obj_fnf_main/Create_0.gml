/// @description
//初始化
depth = 100
stages_data = Load_Stage_Json(obj_init.game_directory + "assets/stages/raealbg.json")
song_data = Sort_Song_Json_scr(Json_Load(obj_init.game_directory + "/assets/data/songs/furchinery/furchinery-hard.json"))
notes_data = song_data.song.notes
song_bpm = song_data.song.bpm
song_speed = song_data.song.speed
song_palyer1 = song_data.song.player1
song_palyer2 = song_data.song.player2
Character_heath_icon = [-1,-1]
Character_heath_color = [-1,-1]
Character_Ds_Map = ds_map_create();
health_bar_obj = instance_create_depth(0,0,0,obj_bar)
Botplay_mode = true;
Acc_make = {"totalNotes": 0,"all_note":0, "acc": 0}
//这里要写外部的文件读取和读取角色名称
var character_obj = instance_create_depth(200,500,-1,obj_character)
character_obj.Character_Ds_Map = Create_Character_Anim(Json_Load(obj_init.game_directory + "assets/data/characters/"+song_palyer2+".json"))
character_obj.Character_Texture_Data = FindSubTexture(Load_Xml_File(obj_init.game_directory + "assets/images/"+ds_map_find_value(character_obj.Character_Ds_Map,"image_path")+".xml"))
character_obj.x = ds_map_find_value(stages_data,"opponent")[0]
character_obj.y = ds_map_find_value(stages_data,"opponent")[1]
with character_obj {event_user(0)}
var character_obj_1 = instance_create_depth(1700,950,-1,obj_character)
character_obj_1.Character_Ds_Map = Create_Character_Anim(Json_Load(obj_init.game_directory + "assets/data/characters/"+song_palyer1+".json"))
character_obj_1.Character_Texture_Data = FindSubTexture(Load_Xml_File(obj_init.game_directory + "assets/images/"+ds_map_find_value(character_obj_1.Character_Ds_Map,"image_path")+".xml"))
character_obj_1.x = ds_map_find_value(stages_data,"boyfriend")[0]
character_obj_1.y = ds_map_find_value(stages_data,"boyfriend")[1]
with character_obj_1 {event_user(0)}
ds_map_add(Character_Ds_Map,0,character_obj)
ds_map_add(Character_Ds_Map,1,character_obj_1)
Set_Character_Icon_Easy(ds_map_find_value(character_obj.Character_Ds_Map,"healthicon"),0,ds_map_find_value(character_obj.Character_Ds_Map,"healthbar_rgb"))
Set_Character_Icon_Easy(ds_map_find_value(character_obj_1.Character_Ds_Map,"healthicon"),1,ds_map_find_value(character_obj_1.Character_Ds_Map,"healthbar_rgb"))
stages = instance_create_depth(0,0,100,obj_stages)
SongMusicBeat = [false,false,true,false];
MusicTime = 0
NowCurrentBeat = 0
play_song_music = []
SongMusicTime = 0
game_speed = song_speed
Sorce = 0
Main_Game_Inf = {"Combo_note":0,"sick":0,"good":0,"bad":0,"shit":0,"miss":0}
Note_Texture = sprite_add(obj_init.game_directory + "assets/images/notes/NOTE_assets.png",1,0,1,0,0);
Note_Asseats_Ds_Map = FindSubTexture(Load_Xml_File(working_directory + "assets/images/notes/NOTE_assets.xml"))
Judge_Texture_Ds_Map = Add_Judge_Texture()
Stages_Ds_Map = ds_map_create()
//解析
game_test_time = 0
Add_song_music(play_song_music,Get_Song_Music_File_Path(song_data.song.song))
for (var i=0;i<array_length(play_song_music);i++){
	show_debug_message(play_song_music[i])
	audio_resume_sound(play_song_music[i]);
}

//音符解析
notes_data_0 = 0
notes_data_sectionNotes= 0

//show_message(Load_Xml_File(working_directory + "assets/images/notes/NOTE_assets.xml"))

//var config = Load_Xml_File(working_directory + "assets/images/notes/NOTE_assets.xml");
//show_message(config)

//创建箭头
arrow_ds_map = ds_map_create();
ds_map_add(arrow_ds_map,0,[Create_Arrow(0,0),Create_Arrow(1,0),Create_Arrow(2,0),Create_Arrow(3,0)])
ds_map_add(arrow_ds_map,1,[Create_Arrow(0,1),Create_Arrow(1,1),Create_Arrow(2,1),Create_Arrow(3,1)])
Load_External_Gml(obj_init.game_directory + "assets/stages/raealbg.gml")
