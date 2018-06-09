hp = 5;
spd = 1.0;

state = "Inactive";
sightRange = 350;
aggressiveness = 0;
attackRange = sprite_width/2 + objPlayer.sprite_width/2;

enum GameState
{ 
     MOVE,
	 IDLE,
     ATTACK,
     STANDSTILL, 
};
gameState = GameState.IDLE;
timer = 100; 
