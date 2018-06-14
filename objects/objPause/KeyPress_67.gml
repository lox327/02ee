/// @description Insert description here
// You can write your code in this editor
if (!pause5) {
	pause5 = 1;
	instance_deactivate_all(true);
	//create other objs here
}

else {
	pause5 = 0;
	instance_activate_all();
	//destroy other objs here
}