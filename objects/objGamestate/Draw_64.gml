/// @description debug info
//display_set_gui_size( camera_get_view_width(view_camera[0])*2, camera_get_view_height(view_camera[0])*2 );
//debug
if (0) {
	draw_text(400, 12, "state: " + string(state));
	draw_text(400, 24, "alpha: " + string(alpha));
	draw_text(400, 36, "room: " + string(room));
	//draw_text(400, 48, "numKey: " + string(objPlayer.numKey));
	draw_text(400, 60, "health: " + string(health));
	draw_text(400, 72, "weapon energy: " + string(objPlayer.weaponEnergy));
	draw_text(400, 84, "checkpoint1: " + string(global.checkpoint1));
	//draw_text(400, 84, "test: " +   string(instance_find(objEnemy3,0)));
	//draw_text(10, 72, "start point x: " + string(sp.x));
	//draw_text(10, 84, "start point y: " + string(sp.y));
}

if (0) {
	draw_text(400, 15*1, "health: " + string(health));
	draw_text(400, 15*2, "weapon energy: " + string(objPlayer.weaponEnergy));
	draw_text(400, 15*3, "artifacts: " + string(objPlayer.invArtifact));
	
	draw_text(400, 15*5, "checkpoint1: " + string(global.checkpoint1));
	draw_text(400, 15*6, "checkpoint2: " + string(global.checkpoint2));
	draw_text(400, 15*7, "d_checkpoint1: " + string(global.d_checkpoint1));
	draw_text(400, 15*8, "d_checkpoint2: " + string(global.d_checkpoint2));
	
	//draw_text(400, 84, "test: " +   string(instance_find(objEnemy3,0)));
	//draw_text(10, 72, "start point x: " + string(sp.x));
	//draw_text(10, 84, "start point y: " + string(sp.y));
}


//pause/inv
/*if (pause) {
	//draw_text(500, 500, "paused");
	//draw_sprite_ext(PauseBack,0,view_xview,view_yview,PauseBack,PauseBack,0,c_white,1);

	for (var i = 0; i < array_height_2d(allObjects); i++) {
		draw_sprite_ext(allObjects[i,0],allObjects[i,1],allObjects[i,2],allObjects[i,3],
		allObjects[i,4],allObjects[i,5],allObjects[i,6],allObjects[i,7],allObjects[i,8]/2)
		
	}
	
	
	
	
	//draw_set_color(c_black);
	//draw_set_alpha(0.05);
	//draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],true); //x,y,w,h of vport0
	//draw_set_font(fnt_GUI);
	//draw_set_color(c_white);
	//draw_set_alpha(1);
}

*/