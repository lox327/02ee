/// @description Insert description here
// You can write your code in this editor
skillname[0] = "Skill0" // the name of the skill (isnt used)
skilldesc[0] = "Fire0"
skillimage[0] = 0 	// this is the image that should be used
skillneeds[0,0] = -1	// What skills the player needs to unlock before they can get this one (-1 is always available)
skillx[0] = 200		// x position of this skill on the screen
skilly[0] = 200		// y position of this skill on the screen

skillname[1] = "Skill1"
skilldesc[1] = "Arcane1"
skillimage[1] = 0
skillneeds[1,0] = -1	// -1 always available
skillx[1] = 300
skilly[1] = 200

skillname[2] = "Skill2"
skilldesc[2] = "Shock2"
skillimage[2] = 0
skillneeds[2,0] = 0	// Link to both skill 0 and skill 1
skillneeds[2,1] = 1 
skillx[2] = 300
skilly[2] = 160