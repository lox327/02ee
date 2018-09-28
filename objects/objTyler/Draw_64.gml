/// @description Insert description here
// You can write your code in this editor
display_set_gui_size( camera_get_view_width(view_camera[0])*2, camera_get_view_height(view_camera[0])*2 );
if (abs(objPlayer.x - x ) > prox) return;
if (abs(objPlayer.y - y ) > prox) return;

//show_debug_message(self.x);
draw_text(self.x, self.y + 128, "[hit enter]");