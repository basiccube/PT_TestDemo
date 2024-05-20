function scr_player_machslide()
{
	input_get()
	mach2 = 0
	hsp = (xscale * movespeed)
	move = (key_right + key_left)
	if (movespeed >= 0 && !in_water)
	    movespeed -= 0.2
	if (movespeed >= 0 && in_water)
		movespeed -= 0.1
	landAnim = false
	if (floor(hsp) == 0)
	{
	    movespeed = 0
	    state = states.normal
	    movespeed = 4
	    mach2 = 0
	    image_index = 0
	    machslideAnim = false
	}
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slopes))))
	{
	    movespeed = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = true
	    machhitAnim = false
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true, soundtype.stereo)
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x - 1), y, obj_slopes))))
	{
	    movespeed = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = true
	    machhitAnim = false
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true, soundtype.stereo)
	}
	if (machslideAnim == true)
	{
		if (machhitAnim == true)
		{
			sprite_index = spr_player_crouchslidestart
			if (floor(image_index) == 4)
				machslideAnim = false
		}
		else
		{
			sprite_index = spr_player_machslidestart
			if (floor(image_index) == 6)
				machslideAnim = false
		}
	}
	if (machslideAnim == false)
	{
		if (machhitAnim == true)
			sprite_index = spr_player_crouchslide
		else
			sprite_index = spr_player_machslide
	}
	image_speed = 0.35
	sound_play(sfx_slide, true, soundtype.player)
	if ((!instance_exists(obj_slidecloud)) && place_meeting(x, (y + 1), obj_collisionparent) && movespeed > 5)
	    instance_create(x, y, obj_slidecloud)
	perform_collisions()



}
