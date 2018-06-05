if (instance_exists(objPlayer)) {
	move_towards_point(objPlayer.x, objPlayer.y, spd);
}

if (hp <= 0)  instance_destroy();
//image_index = direction;