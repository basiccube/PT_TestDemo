if place_meeting(x + hsp, y, obj_solid)
    instance_destroy()
if (vsp < 12)
    vsp += grav
	
with (obj_player)
{
	if ((state == states.mach1 || state == states.mach2) && place_meeting(x + (5 * xscale), y, other) && !other.rolling)
	{
		other.rolling = true
		other.hsp = 7 * xscale
		
		state = states.tackle
		image_index = 0
		mach2 = 0
		sound_play(sfx_bump, true, soundtype.stereo)
	}
}

perform_collisions(collisionflags.ignoreplatforms)

