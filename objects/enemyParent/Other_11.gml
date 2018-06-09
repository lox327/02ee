/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(objPlayer) <= AttackRange && abs(y-objPlayer.y) < LayerSize){
 
        aggressiveness += .02;
 
        if(random(1) < aggressiveness*.03){
 
            event_user(2); //Attack Event
 
        }
 
    }