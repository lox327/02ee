/// @description Insert description here
// You can write your code in this editor
with(other) {
	//hp -= objBullet.bulletDmg;
}

other.hp -= self.bulletDmg;
other.timer = 50;
other.gameState = GameState.STUN;

instance_destroy();