/// @description data
/*
This object has all the data needed to make the skills in an array and then goes through a loop to make all the skills. 
*/

#region // DATA tree (old)

skillname[1] = "Skill2"
skillimage[1] = 4
skillneeds[1,0] = -1  // -1 always available 
skillx[1] = 200
skilly[1] = 200

skillname[2] = "Skill3"
skillimage[2] = 7
skillneeds[2,0] = -1  // -1 always available 
skillx[2] = 400
skilly[2] = 200

skillname[5] = "Skill2.1"
skillimage[5] = 4
skillneeds[5,0] = 1 
skillx[5] = 200+25
skilly[5] = 250

skillname[6] = "Skill2.2"
skillimage[6] = 4
skillneeds[6,0] = 1 
skillx[6] = 200-25
skilly[6] = 250

skillname[7] = "Skill3.1"
skillimage[7] = 7
skillneeds[7,0] = 2 
skillx[7] = 400+25
skilly[7] = 250

skillname[8] = "Skill3.2"
skillimage[8] = 7
skillneeds[8,0] = 2 
skillx[8] = 400-25
skilly[8] = 250

#endregion

#region // make skills


for (i=0; i<array_length_1d(skillname); i++) // loop around for each skill
{

	var newskill = instance_create_layer(skillx[i], skilly[i],"Instances",obj_skill); // Create an object that will be this skill 
	newskill.image_index = skillimage[i]
	newskill.skillname = skillname[i]
	newskill.skillid = i

	show_debug_message("We have made skill " +string(skillname[i]))
	
	// ASSERT – at this point the object skill has been made 
	
	with(newskill) { // we now want to pre record all the lines this skill is connected to so we dont have to work it out every time
	
		for (j=0; j<array_length_2d(other.skillneeds,other.i); j+=1) // loop around all the skills I connect to 
		{
			skillneeds[j] = other.skillneeds[other.i,j]
			show_debug_message("Skill "+ string(newskill.skillname) + " needs " + string(skillneeds[j]))
			
			if (skillneeds[j] == -1) { // This skill is always available so draw a line to the central object 
				
				status = 1
				linetox[0] = obj_skillspawner.x
				linetoy[0] = obj_skillspawner.y
				needcount = 1
				
			} else { // on the new skill record where its lines should be drawn so we don’t need to look it up every frame
				
				linetox[j] = other.skillx[skillneeds[j]]
				linetoy[j] = other.skilly[skillneeds[j]]
				  
				needcount++
			};
		}
	}
	

};

#endregion
#region // we are done with this object so delete it now (you could keep it if you still wanted to access the data)
//instance_destroy()
#endregion
