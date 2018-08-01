// get input, 0 is first controller
if (objGamestate.state == "IN_GAME")
{
getInput();


xvel = xx * playerSpeed;
yvel = yy * playerSpeed;

//movement
if (state == "idle") {
	//x, hor
	/*if (place_meeting(x+xvel, y, objWall)) {
		while(!place_meeting(x+sign(xvel),y, objWall))	 {
			x += sign(xvel);
		}
		xvel = 0;
	}
	x += xvel;

	//y, ver
	if (place_meeting(x, y+yvel, objWall)) {
		while(!place_meeting(x,y+sign(yvel), objWall))	 {
			y += sign(yvel);
		}
		yvel = 0;
	}
	y += yvel;*/
	
	if ( !position_meeting(x+xvel, y+yvel, objTank) && !position_meeting(x+xvel, y+yvel, objBlock) && !position_meeting(x+xvel, y+yvel, objPower) ) {
		x += xvel;
		y += yvel;

	}
	
	//diagonal movement
	if ( xvel != 0 && yvel != 0 ) {
		playerSpeed = diagSpeed +.4;
	}
	else playerSpeed = walkSpeed;
	

	//move animation
	if (abs(xvel) < abs(yvel)) {
		if (yvel < 0) { //moving up
			sprite_index = playerRight;	//playerUp
			dir = "up";
		}
		else {
			sprite_index = playerRight;	//playerDown
			dir = "down";
		}
	}

	if (abs(xvel) > abs(yvel)) {
		if (xvel < 0) { //moving right
			sprite_index = playerLeft;	//playerLeft
			image_xscale = -1;	
			dir = "left";
		}
		else {
			sprite_index = playerRight;	//playerRight
			dir = "right";
			image_xscale = 1;	
		}
	}

	if (xvel == 0 && yvel == 0) {
		sprite_index = playerIdle;
	}
	image_speed = animation;
}

//bounds
if (x <= objPlayer.sprite_width/2)					x = objPlayer.sprite_width/2;
if (x >= room_width - objPlayer.sprite_width/2)		x = room_width - objPlayer.sprite_width/2;
if (y <= objPlayer.sprite_height/2)					y = objPlayer.sprite_height/2;
if (y >= room_height - objPlayer.sprite_height/2)	y = room_height - objPlayer.sprite_height/2;


//attackBash
bash();


//attackSpecial
//special();

//attackShoot
if (actShoot) {
	timer = 0;
	//if (instance_number(objBullet) < 30 && ( weaponEnergy > 0 || (gunSel == 1 && defaultEnergy > 0) )) shoot(); //weapon 1 doesn't use energy
	if (gunSel == 1) {						//default gun, doesn't use energy
		if ( defaultEnergy > 0 ) shoot();
	}
	
	else if ( weaponEnergy > 0 ) shoot();	//all other guns use energy

}


//inc default energy every step to regen, should use var
if (defaultEnergy < defaultMax) {
	if (timer <=0 ) defaultEnergy += .50; //defaultEnergy++;
	else timer--;
}

//switch, gun/bullet sel
if (keyboard_check(ord("1"))) {
	gunSel = 1;
	gun = gun1;
}
else if (keyboard_check(ord("2"))) {
	gunSel = 2;
	gun = gun2;
}
else if (keyboard_check(ord("3"))) {
	gunSel = 3;
	gun = gun3;
}


//handle inventory
/*if (actInv) {
	if (room != 2) {
		//instance_deactivate_all(true);
		currentRoom = room;
		room_goto(inventory);
	}
	else {
		//instance_activate_all();
		room_goto(currentRoom);
	}
}*/

//close window
if (gameEnd) {
	game_end();
}


//timer01
if (state != "idle") {
	if (count < duration) count++;
	if (count >= duration) {
		state = "idle";
		sprite_index = prevSprite;
	}
}

}

setDepth();