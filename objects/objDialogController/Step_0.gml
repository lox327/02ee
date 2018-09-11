/// @description get our dialog lines

//allow user to advance by pressing a key
var next = false;
//if (keyboard_check_pressed(vk_anykey)) {
if (global.btnAction) {
	next = true;
}
getDialog(next);
