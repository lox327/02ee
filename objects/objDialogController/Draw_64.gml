/// @description draw the dialog box
if (!fetch) {
	draw_set_font(fnt_GUI);
	var x_offset = 0;
	if (dialogAvatar != "") {
		if (dialogLeftAlign) x_offset = -32;
		else x_offset = 32;
	}
	
	var x_pos = camera_get_view_width( view_camera[0])/2-96-x_offset ;
	var y_pos = camera_get_view_height( view_camera[0]) - 100 ;
	
	//draw our dialog box
	draw_set_halign(fa_left); //make sure font align is left
	draw_sprite(sprDialogBox, 0, x_pos, y_pos);
	draw_text_ext( x_pos + 10, y_pos + 6, string_hash_to_newline(dialogOutput), 16, 175 );
	
	//draw our avatar box if available
	if (dialogAvatar != "") {
		if (dialogLeftAlign) {
			draw_sprite(sprPortraitBox, 1, x_pos - 61, y_pos);
			draw_sprite(dialogAvatar, 0, x_pos - 56, y_pos +4);
		
		}
		else {
			draw_sprite(sprPortraitBox, 0, x_pos + 186, y_pos);
			draw_sprite_ext(dialogAvatar, 0, x_pos + 248, y_pos +4, -1, 1, 0, c_white, 1);	
		}
	}
	
}