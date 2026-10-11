function Load_All_Song_Music(array){
	var return_array = []
	for (var i=0;i<array_length(array);i++){
		array_push(return_array,Get_Audio_File(array[i]))
	}
	return return_array;
}