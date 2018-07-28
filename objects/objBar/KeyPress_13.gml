//show_message(objPlayer.x);
//show_message(x);
var prox = 50;
if (abs(objPlayer.x - x ) > prox) return;
if (abs(objPlayer.y - y ) > prox) return;

if (global.d_checkpoint1 == 0) startDialog(self, d_bar1);
else if (global.d_checkpoint1 == 1) startDialog(self, d_bar2);