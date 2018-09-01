prox = 50;
npcMove = true;

//DIALOG
dialog = [];
dialogLine = 0;
dialogId = "tyler1";

//sending self obj so adddiaog knows who is sending
d_tyler1 = 
addDialog("hey the name's tyler, looking for something?", true, avatarTyler, false, objTyler);
addDialog("tyler? do I know you? ...", true, avatarPlayer, true, objTyler);

addDialog("no, I don't think so.", true, avatarTyler, false, objTyler);
addDialog("hmm, perhaps from a dream then.", true, avatarPlayer, true, objTyler);

addDialog("or a dream within a dream...", false, avatarTyler, false, objTyler);


d_tyler2 = 
addDialog("hey...come closer.", false, avatarTyler, false, objTyler);


//movement
state = "Inactive";
sightRange = 350;
xorigin = self.x;
yorigin = self.y;

enum NPCState
{ 
     MOVE1,
	 MOVE2,
	 IDLE,
};
gameState = NPCState.IDLE;
timer = 100; 
