hp = 5;
spd = 1.0;
flash = 0;

bulletMax1 = 3;
bulletMax2 = 5;
currBullet = 0;

state = "Inactive";
sightRange = 350;
aggressiveness = 0;
attackRange = sprite_width/2 + objPlayer.sprite_width/2;

enum EnemyState
{ 
     MOVE,
	 IDLE,
	 ATTACK1_IDLE,
	 ATTACK2_IDLE,
     ATTACK1,
	 ATTACK2,
     CHASE,
	 STUN
};
gameState = GameState.IDLE;
timer = 100; 
