/// @description gamestate logic
debug = true;
state = "IN_GAME";
alpha = 1; //0 is transparent

transitionSpeed_room = 0.01;
transitionSpeed_building = 0.03;

currentRoom = "";

pause = false;
allObjects[0,0] = noone;

gun = 2;

checkpoint1 = 0;
checkpoint2 = 0;
checkpoint3 = 0;