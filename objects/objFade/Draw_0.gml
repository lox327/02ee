switch(objGamestate.state) {
	case "IN_GAME": {
		//draw_set_alpha(1);
		break;
	}
	
	case "TRANSITION_ENTER": {
		a = clamp(a + (fade * fadeSpeed), 0, 1);

		if (a==1) {
			//room_goto_next();
			fade = -1;
		}

		if (a==0 && fade==-1) {
			instance_destroy();
	
		}

		draw_set_color(c_black);
		draw_set_alpha(a);
		draw_rectangle(
			view_xport[0],
			view_yport[0],
			view_xport[0] + view_wport[0],
			view_yport[0] + view_hport[0],
			0);
	
		draw_set_alpha(1);
		
		break;
	}
	
	case "TRANSITION_EXIT": {
		//coming in here, fade is -1 and alpha is 1
		a = clamp(a + (fade * fadeSpeed), 0, 1);

		if (a==1) {
			//room_goto_next();
			fade = -1;
		}

		if (a==0 && fade==-1) {
			instance_destroy();
	
		}

		draw_set_color(c_black);
		draw_set_alpha(a);
		draw_rectangle(
			view_xport[0],
			view_yport[0],
			view_xport[0] + view_wport[0],
			view_yport[0] + view_hport[0],
			0);
	
		draw_set_alpha(1);
		break;
	}
	
} 