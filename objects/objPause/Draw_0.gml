/// @description Insert description here
// You can write your code in this editor
if (pause5){
	//draw background black
	//draw_set_color(c_black)	;
	//draw_rectangle(0,0,room_width, room_height,0);
	//draw_sprite(sprite65, 0, 0, 0);
	//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	
	//draw text
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	draw_set_font(fnt_GUI);
	draw_set_color(c_white)	;
	//draw_text(room_width/2, room_height/2, "paused");
	//t = camera_get_view_width(1);
	//r = camera_get_view_x(1);
	//draw_text(camera_get_view_border_x(), camera_get_view_y(0), "paused");
	draw_text(200, 200, "paused");
	draw_set_color(c_black)	;
	
}
