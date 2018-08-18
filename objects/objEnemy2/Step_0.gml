if (hp <= 0)  instance_destroy();
//image_index = direction;
//event_user(0);//Choose a State
if (abs(self.x - objPlayer.x) <= self.sightRange)
{
switch (gameState) {
    case GameState.MOVE: 
    { 
        //MOVE
		mp_potential_step(objPlayer.x, objPlayer.y, spd, true);
		
		//SPRITE SEL
		if (self.x > objPlayer.x) sprite_index = enemy2Left;
		else sprite_index = enemy2Right;
		if (self.y > objPlayer.y) sprite_index = enemy2Up;
		else sprite_index = enemy2Down;
		
		//avoid colliding/overlapping with other enemy
		if (distance_to_object(enemyParent) > 20) {
			//timer = 10;
			//self.x += sign(spd);
			//gameState = GameState.IDLE;
			//mp_potential_step(objPlayer.x, objPlayer.y, spd);

		}
		
		//ATTACK - based on distance, % from rand
		if (distance_to_object(objPlayer) < 50) {
			//timer = 100;
			if (random(100) > 25) gameState = GameState.ATTACK2;
			else gameState = GameState.ATTACK1;
		}
		
		//CHASE - based on distance, % from rand
		else if (distance_to_object(objPlayer) < 100) {
			//timer = 10;
			gameState = GameState.CHASE;
		}
		
		
        if (timer <= 0)
		//if (distance_to_object(objPayer) > 128)	gameState = GameState.IDLE;
        { 
            if (random(100) > 50) timer = 20;
			else timer = 40;
            gameState = GameState.IDLE;
        }
        break; 
    } 
    case GameState.IDLE: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemy2Idle;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.MOVE;
        }
        break; 
    } 
	case GameState.STUN: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemy2Stun;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.MOVE;
        }
        break; 
    } 
	case GameState.CHASE: 
    { 
		//sprite_index = enemy2Attack;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*2, true);
        timer = 100;
        gameState = GameState.MOVE;
        break; 
    } 
	
	case GameState.ATTACK1: 
    { 
		sprite_index = enemy2Attack1;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*4, true);
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.IDLE;

        }
        break; 
    }
	case GameState.ATTACK2: 
    { 
		sprite_index = enemy2Attack2;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*2, true);
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.IDLE;

        }
        break; 
    }
} 
timer--;
}