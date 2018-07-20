state = "attackShoot";
count = 0;
duration = 10;

//switch for weapon/bulletType
if (gunSel == 1) {
	bulletType = objBullet;
	gun = gun1;
	if (defaultEnergy > -20) defaultEnergy -=15;
}
else if (gunSel == 2) {
	bulletType = objBullet2;
	gun = gun2;
	weaponEnergy -=5; //use var so we can have this dynamic to reduce in talent tree
}
else if (gunSel == 3) {
	bulletType = objBullet3;
	gun = gun3;
	weaponEnergy -=10; //how much weapon energy to use
}


switch(dir)	{
	case "up":
		instance_create_layer(x,y-grid,"Instances",bulletType);
		prevSprite = playerUp;
		sprite_index=attackUp;
	break;
		
	case "down":
		instance_create_layer(x,y+grid,"Instances",bulletType);
		prevSprite = playerDown;
		sprite_index=attackDown;
	break;
		
	case "left":
		instance_create_layer(x-grid,y,"Instances",bulletType);
		prevSprite = playerLeft;
		sprite_index=attackLeft;
	break;
		
	case "right":
		instance_create_layer(x+grid,y,"Instances",bulletType);
		prevSprite = playerRight;
		sprite_index=attackRight;
	break;
		
}