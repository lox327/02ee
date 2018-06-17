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