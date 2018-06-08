state = "attackBash";
count = 0;
duration = 10;

//switch for weapon/bulletType
if (numKey == 1) {
	bulletType = objBullet;
	if (defaultEnergy > -20) defaultEnergy -=25;
}
else if (numKey == 2) {
	bulletType = objBullet2;
	weaponEnergy -=25; //use var so we can have this dynamic to reduce in talent tree
}
else if (numKey == 3) {
	bulletType = objBullet3;
	weaponEnergy -=20;
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