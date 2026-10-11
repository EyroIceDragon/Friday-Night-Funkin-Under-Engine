function Draw_Texture(Png_Texture,draw_x,draw_y,x,y,width,height,scale){
	var pos_x = width/2 * scale
	var pos_y = height/2 * scale
	draw_sprite_general(Png_Texture, 0,x,y,width,height,draw_x - pos_x,draw_y - pos_y,scale,scale,0,c_white,c_white,c_white,c_white,1);
}