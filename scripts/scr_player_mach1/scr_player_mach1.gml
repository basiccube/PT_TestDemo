function scr_player_mach1()
{
	input_get()
	landAnim = false
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slopes))))
	{
	    mach2 = 0
	    state = states.normal
	    movespeed = 0
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x - 1), y, obj_slopes))))
	{
	    mach2 = 0
	    state = states.normal
	    movespeed = 0
	}
	if ((movespeed <= 5 && !in_water) || (movespeed <= 3 && in_water))
	    movespeed += 0.2
	machhitAnim = false
	crouchslideAnim = true
	hsp = floor((xscale * movespeed))
	if (key_jump && place_meeting(x, (y + 1), obj_collisionparent) && key_attack)
	{
	    momemtum = 1
	    vsp = -9
	    state = states.jump
	    jumpAnim = true
	    image_index = 0
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 35)
	        mach2++
	    if (mach2 >= 35)
	    {
			flash = 1
	        state = states.mach2
	        instance_create(x, y, obj_jumpdust)
	    }
	}
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	{
	    momemtum = 1
	    state = states.jump
	    jumpAnim = false
	    image_index = 0
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = states.normal
	    image_index = 0
	    mach2 = 0
	    machslideAnim = true
	}
	if key_down
	{
	    sound_play(sfx_slide, false, soundtype.stereo)
	    state = states.crouchslide
	    mach2 = 0
	}
	sound_play(sfx_mach1, true, soundtype.player)
	sprite_index = spr_player_mach
	if (!in_water)
	{
		if (movespeed < 4)
		    image_speed = 0.35
		else if (movespeed > 4 && movespeed < 8)
		    image_speed = 0.45
		else
		    image_speed = 0.6
	}
	else
	{
		if (movespeed < 4)
		    image_speed = 0.2
		else if (movespeed > 4 && movespeed < 8)
		    image_speed = 0.35
		else
		    image_speed = 0.45
	}
	if ((!instance_exists(obj_dashcloud)) && (!(place_meeting(x, y, obj_water2))) && place_meeting(x, (y + 1), obj_collisionparent))
	    instance_create(x, y, obj_dashcloud)
	perform_collisions()



}
