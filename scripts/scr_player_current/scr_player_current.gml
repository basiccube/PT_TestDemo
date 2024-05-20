function scr_player_current()
{
	input_get()
	landAnim = true
	mach2 = 0
	if place_meeting(x, y, obj_current)
	{
	    hsp = -15
		movespeed = 5
	}
	if place_meeting(x, y, obj_current2)
	{
	    hsp = 15
		movespeed = 5
	}
	if (!place_meeting(x, y, obj_current) && !place_meeting(x, y, obj_current2))
	{
		hsp = (xscale * movespeed)
		if (movespeed > 0)
			movespeed -= 0.2
		if (movespeed == 0)
		{
			state = states.normal
			movespeed = 0
			mach2 = 0
			image_index = 0
		}
		if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1)
		{
		    state = states.bump
		    hsp = -2
		    vsp = -3
		    mach2 = 0
		    image_index = 0
		    instance_create((x + 10), (y + 10), obj_bumpeffect)
		    sound_play(sfx_bump, true, soundtype.stereo)
		}
		if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1)
		{
		    state = states.bump
		    hsp = 2
		    vsp = -3
		    mach2 = 0
		    image_index = 0
		    instance_create((x - 10), (y + 10), obj_bumpeffect)
		    sound_play(sfx_bump, true, soundtype.stereo)
		}
	}
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
	perform_collisions()
}
