function Add_Judge_Texture(){
	var Texture_Path =
	[
		"sick.png",
	    "bad.png",
	    "good.png",
	    "shit.png",
	    "combo.png",
	    "num0.png",
	    "num1.png",
	    "num2.png",
	    "num3.png",
	    "num4.png",
	    "num5.png",
	    "num6.png",
	    "num7.png",
	    "num8.png",
	    "num9.png"
	
	]
	for (var i=0;i<array_length(Texture_Path);i++){
		Texture_Path[i] = "assets//images//score//" + Texture_Path[i]

	}
	
	return Add_Texture_Ds_Map(Texture_Path)
}