/// @description Insert description here
// You can write your code in this editor
///Attack Event
if(health > 0){
 
    attackChance = random(100); 
 
    if((aggressiveness>.75 && attackChance>= 90) || (aggressiveness>1 && attackChance>= 75)){
 
        sprite_index = SPR_EnemyStrongPunch;
        //myAttack = instance_create(x,y,ATK_StrongPunch);
 
    }else{
 
        sprite_index = SPR_EnemyBasicPunch;
        //myAttack = instance_create(x,y,ATK_BasicPunch);
 
    }
     
    speed = 0;
    state = "Attacking";
    aggressiveness = 0;
    myAttack.depth = depth;
    myAttack.image_xscale = image_xscale;
    myAttack.image_speed = image_speed;
    myAttack.Owner = "Enemy";
     
}