/// @description Insert description here
// You can write your code in this editor
global.boss1 = 1;
//room_goto(cutscene1);

instance_create_layer(x, y, "Instances", objHealth);
instance_create_layer(x+5, y+5, "Instances", objEnergy);
instance_create_layer(x+10, y+10, "Instances", objArtifact);