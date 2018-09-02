if (hp <= 0)  instance_destroy();
//image_index = direction;
//event_user(0);//Choose a State
if (abs(self.x - objPlayer.x) <= self.sightRange)
{
switch (gameState) {
    case EnemyState.MOVE: 
    { 
        //MOVE
		mp_potential_step(objPlayer.x, objPlayer.y, spd, true);
		
		//SPRITE SEL
		if (self.x > objPlayer.x) sprite_index = enemy4Left;
		else sprite_index = enemy4Right;
		if (self.y > objPlayer.y) sprite_index = enemy4Up;
		else sprite_index = enemy4Down;
		
		
		//ATTACK - based on distance, % from rand
		if (distance_to_object(objPlayer) < 100) {
			//timer = 100;
			//gameState = EnemyState.ATTACK2;
			if (random(100) > 50) gameState = GameState.ATTACK2;
			else gameState = GameState.ATTACK1;
		}
		
		//CHASE - based on distance, % from rand
		else if (distance_to_object(objPlayer) < 100) {
			//timer = 10;
			//gameState = EnemyState.CHASE;
		}
		
		
        
        break; 
    } 
    case EnemyState.IDLE: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemy4Idle;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = EnemyState.MOVE;
        }
        break; 
    } 
	case EnemyState.ATTACK1_IDLE: 
    { 
        //do another action 
		sprite_index = enemy4Idle;
		if (timer <= 0) {
			if (self.currBullet < self.bulletMax1) //timer for fired bullet is up; if bullet/burst max has been reached, we IDLE. otherwise, shoot again
			{ 
				gameState = EnemyState.ATTACK1;
			}
			else {
				self.currBullet = 0;	//reset bullet counter
				timer = 100;			//how long to IDLE for before next burst
				gameState = EnemyState.IDLE;
			}
		}
		
        break; 
    } 
	case EnemyState.ATTACK2_IDLE: 
    { 
        //do another action 
		sprite_index = enemy4Idle;
		if (timer <= 0) {
			if (self.currBullet < self.bulletMax2) //timer for fired bullet is up; if bullet/burst max has been reached, we IDLE. otherwise, shoot again
			{ 
				gameState = EnemyState.ATTACK2;
			}
			else {
				self.currBullet = 0;	//reset bullet counter
				timer = 100;			//how long to IDLE for before next burst
				gameState = EnemyState.IDLE;
			}
		}
		
        break; 
    } 
	case EnemyState.STUN: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = enemy4Stun;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = EnemyState.MOVE;
        }
        break; 
    } 
	case EnemyState.CHASE: 
    { 
		//sprite_index = enemy4Attack;
		mp_potential_step(objPlayer.x, objPlayer.y, spd*2, true);
        timer = 100;
        gameState = EnemyState.MOVE;
        break; 
    } 
	
	case EnemyState.ATTACK1: 
    { 
		self.currBullet++;
		sprite_index = enemy4Attack1;
		instance_create_layer(self.x,self.y,"Instances",enemyBullet);
		
		timer = 10; //time between bullets
        gameState = EnemyState.ATTACK1_IDLE; //pause in between bullets to create burst fire effect
		
		break;
    }
	case EnemyState.ATTACK2: 
    { 
		self.currBullet++;
		sprite_index = enemy4Attack2;
		instance_create_layer(self.x,self.y,"Instances",enemyBullet2);
		
		timer = 25; //time between bullets
        gameState = EnemyState.ATTACK2_IDLE; //pause in between bullets to create burst fire effect
		
		break;
		
    }
} 
timer--;
}