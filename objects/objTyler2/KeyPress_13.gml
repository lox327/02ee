//show_message(objPlayer.x);
//show_message(x);
var prox = 50;
if (abs(objPlayer.x - x ) > prox) return;
if (abs(objPlayer.y - y ) > prox) return;

startDialog(self, d_tyler1);
//if (global.d_checkpoint1 == 1) startDialog(self, d_tyler2);