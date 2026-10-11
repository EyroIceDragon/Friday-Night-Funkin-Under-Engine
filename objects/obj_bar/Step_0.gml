icon_scale += (1-icon_scale) / 5
small_bar_scale += (1-small_bar_scale) / 4
if Get_Song_Music_Beat(0) icon_scale = 1.05
//ACC = (sick*350 + good*200 + bad*100 + shit*50) / (totalNotes * 350) * 100
var _inf = obj_fnf_main.Main_Game_Inf;

var sick  = _inf.sick;
var good  = _inf.good;
var bad   = _inf.bad;
var shit  = _inf.shit;
var totalNotes = obj_fnf_main.Acc_make.totalNotes;

acc = (sick*350 + good*250 + bad*100 + shit*50) / (totalNotes * 350) * 100