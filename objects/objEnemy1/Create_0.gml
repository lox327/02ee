hp = 5;
hpMax = hp;
spd = 1.0;
flash = 0;

state = "Inactive";
sightRange = 350;
aggressiveness = 0;
attackRange = sprite_width/2 + objPlayer.sprite_width/2;

enum GameState2
{ 
     INTRO,
	 DEATH,
	 MOVE,
	 IDLE,
	 ATTACK_IDLE,
     ATTACK1,
	 ATTACK2,
     CHASE,
	 STUN
};
gameState = GameState2.INTRO;
timer = 100; 
