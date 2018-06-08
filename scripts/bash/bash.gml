if (actAttack && state="idle") {
	state = "attack";
	count = 0;
	duration = 10;
	
	switch(dir)	{
		case "up":
			instance_create_layer(x,y-grid,"Instances",objSword);
			prevSprite = playerUp;
			sprite_index=attackUp; //bashUp...
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