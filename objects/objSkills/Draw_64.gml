if (1) {
	for (var i = 1; i <= array_length_1d(skillname); i++) {
		//draw_text(1020, i*12, "skill" + i-1 + ": " + string(objSkills.skillname[i-1]));
		draw_text(1020, i*12, "skill name: " + skillname[i-1]);
		
	}
	
	for (var i = 1; i <= array_length_1d(skilldesc); i++) {
		//draw_text(1020, i*12, "skill" + i-1 + ": " + string(objSkills.skillname[i-1]));
		draw_text(1020, i*12*5, "skill desc: " + skilldesc[i-1]);
		
	}
}
