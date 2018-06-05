/// @description fade in/out code
switch(state) {
	case "IN_GAME": {
		draw_set_alpha(1);
		break;
	}
	
	case "TRANSITION_ENTER": {
		alpha -= transitionSpeed_room;
		if (alpha <= 0) {
			alpha = 0;
			state = "TRANSITION_EXIT";
		}
		draw_set_alpha(alpha);
		break;
	}
	
	case "TRANSITION_EXIT": {
		alpha += transitionSpeed_room;
		if (alpha >= 1) {
			alpha = 1;
			state = "IN_GAME";
		}
		draw_set_alpha(alpha);
		break;
	}
	
} 

if (keyboard_check_pressed(vk_tab)) {
	if (!pause) {
		pause = true;
		instance_deactivate_all(true);	
	}
	else {
		pause = false;
		instance_activate_all();
	}
}