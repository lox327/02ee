if (hp <= 0)  instance_destroy();
//image_index = direction;
//event_user(0);//Choose a State

switch (gameState) {
    case GameState.MOVE: 
    { 
        //moves
		move_towards_point(objPlayer.x, objPlayer.y, spd);
		
		if (self.x > objPlayer.x) sprite_index = enemy2Left;
		else sprite_index = enemy2Right;
		if (self.y > objPlayer.y) sprite_index = enemy2Up;
		else sprite_index = enemy2Down;
		
		//code to avoid colliding with other enemy
		if (distance_to_object(enemyParent) > 20) {
			//timer = 10;
			//self.x += sign(spd);
			//gameState = GameState.IDLE;
			//move_towards_point(objPlayer.x, objPlayer.y, spd);

		}
		
		if (distance_to_object(objPlayer) < 50) {
			//timer = 10;
			gameState = GameState.ATTACK;
		}
		
		
        else if (timer <= 0)
		//if (distance_to_object(objPayer) > 128)	gameState = GameState.IDLE;
        { 
            timer = 50;
            gameState = GameState.IDLE;
        }
        break; 
    } 
    case GameState.IDLE: 
    { 
        //do another action 
        move_towards_point(objPlayer.x, objPlayer.y, 0);
		sprite_index = enemy2Idle;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.MOVE;
        }
        break; 
    } 
	case GameState.ATTACK: 
    { 
        //do another action 
        //enemyAttack();
        timer = 100;
        gameState = GameState.MOVE;
        break; 
    } 
} 
timer--;
