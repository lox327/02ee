///draw character hud
//x_left, y_top, x_right, y_bot
if (room != inventory){
left_align = 100;
right_align = 200;
xbar = 25;

var pc;
pc = (health / healthMax) * 100;
draw_healthbar(left_align, xbar*1, right_align, xbar*2, pc, c_black, c_red, c_red, 0, true, true);

var pc2;
pc2 = (weaponEnergy / weaponEnergyMax) * 100;
draw_healthbar(left_align, xbar*2, right_align, xbar*3, pc2, c_black, c_blue, c_blue, 0, true, true);

var pc3;
pc3 = (defaultEnergy / defaultMax) * 100;
draw_healthbar(left_align, xbar*3, right_align, xbar*3+2, pc3, c_black, c_gray, c_gray, 0, true, true);

draw_sprite(gun, gun, 25, 21);

}