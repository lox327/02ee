/// @description Release the skill 

if (status == 2) { // You can only release this skill if it is bought  

	// add any code here for buying the skill, i.e. you might have to deduct money or skill points 

	status = 1 // set this skill as being bought 
	
	with(obj_skill) { // go through all skills and see if they should now be set to available
	
		// Set skills I link to as available 
		for (i=0; i<needcount; i++) {
		    if (skillneeds[i] == other.skillid) {
				if (status == 1 || status == 2) { // dont overwrite if they have already bought upgrade
					status = 0 // This skill is next to me on the tree and is unavailable so make it available. 
				}
			}
		};
		
		// Set skills that link to me as available  
		for (i=0; i<other.needcount; i++) { // go backwards down the tree
			if (other.skillneeds[i] == skillid) {
				if (status == 1) { // dont overwrite if they have already bought upgrade
					status = 0 // This skill is next to me on the tree and is unavailable so make it available. 
				}
			}
		}

	}
	
	// add any code here to save the changes 
	
}

