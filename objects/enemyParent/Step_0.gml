if (instance_exists(objPlayer)) {
	//move_towards_point(objPlayer.x, objPlayer.y, spd);
}

if (hp <= 0)  instance_destroy();
//image_index = direction;


timer--;
switch (gameState) {
    case GameState.MOVE: 
    { 
        //moves
		move_towards_point(objPlayer.x, objPlayer.y, spd);
        if (timer <= 0)
        { 
            timer = 100;
            gameState = GameState.PAUSE;
        }
        break; 
    } 
    case GameState.PAUSE: 
    { 
        //do another action 
        move_towards_point(objPlayer.x, objPlayer.y, 0);
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
        //if (close to player) enemyAttack();
		if (timer <= 0) //switch action
        { 
            timer = 100;
            gameState = GameState.MOVE;
        }
        break; 
    } 
} 