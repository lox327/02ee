/// @description gamestate logic
debug = true;
state = "IN_GAME";
alpha = 1; //0 is transparent

transitionSpeed_room = 0.01;
transitionSpeed_building = 0.03;

currentRoom1 = noone;

pause = false;
allObjects[0,0] = noone;

gun = 2;

global.checkpoint1 = 0;
global.checkpoint2 = 0;
global.checkpoint3 = 0;

global.d_checkpoint1 = 1;
global.d_checkpoint2 = 0;
global.d_checkpoint3 = 0;

global.room2_x = 0;
global.room2_y = 0;