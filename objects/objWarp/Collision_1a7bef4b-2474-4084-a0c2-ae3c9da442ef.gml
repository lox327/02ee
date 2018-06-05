if (objGamestate.alpha > 0)	objGamestate.state = "TRANSITION_ENTER";
else {
	room_goto(targetRoom);
	objPlayer.x = targetX;
	objPlayer.y = targetY;
}
