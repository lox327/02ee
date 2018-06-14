/// @description Insert description here
// You can write your code in this editor
if (pause5){
	//draw background black
	draw_set_color(c_black)	;
	draw_rectangle(0,0,room_width, room_height,0);
	
	//draw text
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_GUI);
	draw_set_color(c_white)	;
	//draw_text(room_width/2, room_height/2, "paused");
	draw_text(200, 200, "paused");
	draw_set_color(c_black)	;
	
}
