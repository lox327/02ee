//DIALOG
dialog = [];
dialogLine = 0;

d_tyler1 = 
addDialog("hey the name's tyler2, looking for something?", true, avatarTyler2, false);
addDialog("tyler2? do I know you? ...", true, avatarPlayer, true);

addDialog("no, I don't think so.", true, avatarTyler2, false);
addDialog("hmm, perhaps from a dream then.", true, avatarPlayer, true);

addDialog("or a dream within a dream...", false, avatarTyler2, false);


d_tyler2 = 
addDialog("hey...come closer.", false, avatarTyler2, false);