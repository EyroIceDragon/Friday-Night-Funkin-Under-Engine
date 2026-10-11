function Make_Judge(ms_time){
	var judgment = "sick";
    var _score = 0;
    Add_Health(1)
	Set_Beat_Soure_Bar()
    if (ms_time <= 45) {
		obj_fnf_main.Main_Game_Inf.sick ++
        judgment = "sick";
        _score = 350;
    } else if (ms_time <= 90) {
		obj_fnf_main.Main_Game_Inf.good ++
        judgment = "good";
        _score = 250;
    } else if (ms_time <= 135) {
		obj_fnf_main.Main_Game_Inf.bad ++
        judgment = "bad";
        _score = 100;
    } else if (ms_time <= 150) {
		obj_fnf_main.Main_Game_Inf.shit ++
        judgment = "shit";
        _score = 50;
    } else {
        judgment = "miss";
        _score = 0;
    }
	Add_Game_Sorce(_score)
	Create_Judge_Obj(obj_fnf_main.Main_Game_Inf.Combo_note,judgment)
}