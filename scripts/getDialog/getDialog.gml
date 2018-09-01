/// @description get dialog pieces from obj
/// @param startLine
//need to generalize objTyler as this can be any NPC
objPlayer.playerMove = false;


if (fetch) {
	dialogOutput = "";	
	dialogOutputSpeed = 0;
	var dialogData = dialogLines[dialogLine];
	
	//set up defaults
	dialogText = dialogData[0];
	dialogContinue = dialogData[1];
	dialogAvatar = dialogData[2];
	dialogLeftAlign = dialogData[3]; //should have var that is just ALIGN and send left/right instead of bool for LEFT.
	dialogObj = dialogData[4];

	fetch = false; //prevent this from running repeatedly
	
	dialogObj.npcMove= false;
	dialogObj.gameState = NPCState.IDLE;
	
}

else {
	//finish filling in text/skip to next dialog if user pressed a key
	//if (argument[0]) {
	if (keyboard_check_pressed(vk_enter)) {
		if (string_length(dialogText) > string_length(dialogOutput)) {
			dialogOutputSpeed = 1000;
		}
		else {
			if (dialogContinue)	{
				dialogLine++;
				fetch = true;
			} else {
				instance_destroy();
				objPlayer.playerMove = true;
				dialogObj.npcMove= true;
				dialogObj.gameState = NPCState.MOVE1; //need to set this back to prev state instead of hard coding
			}
			
		}
		
	}
	
	dialogOutput = string_copy(dialogText, 1, dialogOutputSpeed);
	dialogOutputSpeed += 0.8;
	
}
