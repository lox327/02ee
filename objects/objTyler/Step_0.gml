/// @description Insert description here
// You can write your code in this editor
if (abs(self.x - objPlayer.x) <= self.sightRange)
{
switch (gameState) {
    case NPCState.MOVE1: //move left
    { 
        //MOVE
		if (self.x >= xorigin - 100) self.x -= 1;
		else gameState = NPCState.MOVE2;
		
		//SPRITE SEL
		if (self.x > objPlayer.x) sprite_index = sprTtyler_walk;
		else sprite_index = sprTtyler_walk;
		if (self.y > objPlayer.y) sprite_index = sprTtyler_walk;
		else sprite_index = sprTtyler_walk;
		
		
        if (timer <= 0)
		//if (distance_to_object(objPayer) > 128)	gameState = GameState.IDLE;
        { 
            if (random(100) > 50) timer = 250;
			else timer = 300;
            gameState = NPCState.IDLE;
        }
        break; 
    } 
	case NPCState.MOVE2: //move right
    { 
        //MOVE
		if (self.x <= xorigin) self.x += 1;
		else gameState = NPCState.IDLE;
		
		//SPRITE SEL
		if (self.x > objPlayer.x) sprite_index = sprTtyler_walk;
		else sprite_index = sprTtyler_walk;
		if (self.y > objPlayer.y) sprite_index = sprTtyler_walk;
		else sprite_index = sprTtyler_walk;
		
		
        if (timer <= 0)
		//if (distance_to_object(objPayer) > 128)	gameState = GameState.IDLE;
        { 
            if (random(100) > 50) timer = 200;
			else timer = 300;
            gameState = NPCState.IDLE;
        }
        break; 
    } 
	
    case NPCState.IDLE: 
    { 
        //do another action 
        mp_potential_step(objPlayer.x, objPlayer.y, 0, true);
		sprite_index = sprTtyler_idle;
		
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = NPCState.MOVE1;
        }
        break; 
    } 
	
} 
if (npcMove) timer--;
}

setDepth();