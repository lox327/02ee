if ( hp <= 0 && gameState != GameState2.DEATH )  {
	//instance_destroy();
	sprite_index = enemyDeath;
	//timer = 100;
	gameState = GameState2.DEATH;
}
//image_index = direction;
//event_user(0);//Choose a State
if (abs(self.x - objPlayer.x) <= self.sightRange)
{
	
switch (gameState) {
    case GameState2.MOVE: 
    { 
        //MOVE
		mp_potential_step(objPlayer.x, objPlayer.y, spd, true);
		
		//SPRITE SEL
		if (self.x > objPlayer.x) sprite_index = enemyLeft;
		else sprite_index = enemyRight;
		if (self.y > objPlayer.y) sprite_index = enemyUp;
		else sprite_index = enemyDown;
		
		//avoid colliding/overlapping with other enemy
		if (distance_to_object(enemyParent) > 20) {
			//timer = 10;
			//self.x += sign(spd);
			//gameState = GameState2.IDLE;
			//mp_potential_step(objPlayer.x, objPlayer.y, spd);

		}
		
		//ATTACK - based on distance, % from rand
		if (distance_to_object(objPlayer) < 50) {
			//timer = 100;
			if (random(100) > 25) gameState = GameState2.ATTACK2;
			else gameState = GameState2.ATTACK1;
		}
		
		//CHASE
		else if (distance_to_object(objPlayer) < 100) {
			//timer = 10;
			gameState = GameState2.CHASE;
		}
		
		
        if (timer <= 0)
		//if (distance_to_object(objPayer) > 128)	gameState = GameState2.IDLE;
        { 
            if (random(100) > 50) timer = 20;
			else timer = 40;
            gameState = GameState2.IDLE;
        }
        break; 
    } 
    case GameState2.IDLE: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemyIdle;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState2.MOVE;
        }
        break; 
    } 
	case GameState2.INTRO: 
    { 
		if (image_speed > 0) { //not needed? image speed inherited from sprite?
			if (image_index > image_number - 1) {
				timer = 100;
				gameState = GameState2.IDLE;
			}
		}
		
        break; 
    } 
	case GameState2.DEATH: 
    { 
		//if (timer <= 0) instance_destroy();	//timer based to destory
		if (image_index > image_number - 1) {	//sprite based to destroy
			instance_destroy();
		}
		
        break; 
    } 
	case GameState2.STUN: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemyStun;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState2.MOVE;
        }
        break; 
    } 
	case GameState2.CHASE: 
    { 
		//sprite_index = enemyAttack;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*2, true);
        timer = 100;
        gameState = GameState2.MOVE;
        break; 
    } 
	
	case GameState2.ATTACK1: 
    { 
		sprite_index = enemyAttack1;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*4, true);
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState2.IDLE;

        }
        break; 
    }
	case GameState2.ATTACK2: 
    { 
		sprite_index = enemyAttack2;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*2, true);
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState2.IDLE;

        }
        break; 
    }
} 
timer--;
}