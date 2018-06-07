// get input, 0 is first controller
if (objGamestate.state == "IN_GAME")
{
getInput(0);

xvel = xx * playerSpeed;
yvel = yy * playerSpeed;

//movement
if (state == "idle") {
	//x, hor
	if (place_meeting(x+xvel, y, objWall)) {
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
	y += yvel;

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


//attack
if (actAttack && state="idle") {
	state = "attack";
	count = 0;
	duration = 10;
	
	switch(dir)	{
		case "up":
			instance_create_layer(x,y-grid,"Instances",objSword);
			prevSprite = playerUp;
			sprite_index=attackUp;
		break;
		
		case "down":
			instance_create_layer(x,y+grid,"Instances",objSword);
			prevSprite = playerDown;
			sprite_index=attackDown;
		break;
		
		case "left":
			instance_create_layer(x-grid,y,"Instances",objSword);
			prevSprite = playerLeft;
			sprite_index=attackLeft;
		break;
		
		case "right":
			instance_create_layer(x+grid,y,"Instances",objSword);
			prevSprite = playerRight;
			sprite_index=attackRight;
		break;
		
	}
}


//attackShoot
if (actShoot) {
	//if (instance_number(objBullet) < 30 && ( weaponEnergy > 0 || (numKey == 1 && defaultEnergy > 0) )) shoot(); //weapon 1 doesn't use energy
	if (numKey == 1) {						//default gun, doesn't use energy
		if ( defaultEnergy > 0 ) shoot();
	}
	
	else if ( weaponEnergy > 0 ) shoot();	//all other guns use energy

}

//switch
if (keyboard_check(ord("1"))) numKey = 1;
else if (keyboard_check(ord("2"))) numKey = 2;


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

//inc default energy every step to regen, should use var
if (defaultEnergy < defaultMax) defaultEnergy += .50; //defaultEnergy++;