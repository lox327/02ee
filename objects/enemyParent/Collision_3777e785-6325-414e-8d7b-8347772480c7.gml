health -= 50;
objPlayer.x -= 100;

if (health <= 0) {
	health = 100;
	game_restart();
	
}

timer = 50;
gameState = GameState.IDLE;