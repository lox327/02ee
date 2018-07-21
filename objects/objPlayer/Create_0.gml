setDepth();

playerSpeed = (sprite_width/8*0.5) + 1;
animation = (playerSpeed*0.1)*image_number;
grid = sprite_width;

dir = "right";
state = "idle";
pause = false;


//DEFAULTS
gunSel = 1;
defaultEnergy = 100;
weaponEnergy = 50;
health = 90;
currency = 0;
gun = gun1;
timer = 0;


//MAX
defaultMax = 100;
weaponEnergyMax = 100;
specialEnergyMax = 100;
healthMax = 100;


//DIALOG
dialog = [];
dialogLine = 0;

d_intro_text = 
addDialog("hello world! this is a long message, lots of words. blah, whatever. im hungry af........", true, sprAvatar, true);
addDialog("how are you? lots more words, blah blah blah....................", false, sprAvatar2, false);

d_second_text = 
addDialog("lots more blah", false, sprAvatar2, false);

//startDialog(self, d_second_text);