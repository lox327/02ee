//DIALOG
dialog = [];
dialogLine = 0;

d_bar1 = 
addDialog("the east is blocked off unless you have a key.", true, avatarBar, false);
addDialog("you're gonna need to go west and clear that room to get the key.", true, avatarBar, false);
addDialog("ok, and then you'll tell me what I need to know? ...", true, avatarPlayer, true);

addDialog("we'll see if you make it back...", false, avatarBar, false);


d_bar2 = 
addDialog("wow, you made it back. I'm surprised.", true, avatarBar, false);
addDialog("did you get the key?", true, avatarBar, false);
addDialog("sure did. now tell me, what should I expect when I go east??", true, avatarPlayer, true);

addDialog("HELL...", false, avatarBar, false);