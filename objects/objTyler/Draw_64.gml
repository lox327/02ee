/// @description Insert description here
// You can write your code in this editor
if (abs(objPlayer.x - x ) > prox) return;
if (abs(objPlayer.y - y ) > prox) return;

//show_debug_message(self.x);
draw_text(self.x, self.y + 128, "[hit enter]");