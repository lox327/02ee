/// @description debug info

//debug
if (0) {
	draw_text(10, 12, "state: " + string(state));
	draw_text(10, 24, "alpha: " + string(alpha));
	draw_text(10, 36, "room: " + string(room));
	draw_text(10, 48, "numKey: " + string(objPlayer.numKey));
	draw_text(10, 60, "health: " + string(health));
	draw_text(10, 72, "weapon energy: " + string(objPlayer.weaponEnergy));
	//draw_text(10, 72, "start point x: " + string(sp.x));
	//draw_text(10, 84, "start point y: " + string(sp.y));
}

//pause/inv
if (pause) {
	//draw_set_color(c_black);
	//draw_set_alpha(0.05);
	//draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],true); //x,y,w,h of vport0
	//draw_set_font(fnt_GUI);
	//draw_set_color(c_white);
	//draw_set_alpha(1);
}

