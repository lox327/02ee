draw_self();

var pc;
pc = (hp / 5) * 100;
draw_healthbar(x-15, y+15, x+15, y+12, pc, c_black, c_red, c_red, 0, true, true);
