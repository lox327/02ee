//DIALOG
dialog = [];
dialogLine = 0;

d_tyler1 = 
addDialog("hey the name's tyler, looking for something?", true, avatarTyler, false);
addDialog("tyler? do I know you? ...", true, avatarPlayer, true);

addDialog("no, I don't think so.", true, avatarTyler, false);
addDialog("hmm, perhaps from a dream then.", true, avatarPlayer, true);

addDialog("or a dream within a dream...", false, avatarTyler, false);


d_tyler2 = 
addDialog("hey...come closer.", false, avatarTyler, false);