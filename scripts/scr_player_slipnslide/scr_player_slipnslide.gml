function scr_player_slipnslide()
{
	input_get()
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	hsp = (xscale * movespeed)
	if (movespeed >= 0)
	    movespeed -= 0.2
	machhitAnim = false
	crouchslideAnim = true
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
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
	sound_play(sfx_slide, true, soundtype.player)
	if ((!instance_exists(obj_slidecloud)) && place_meeting(x, (y + 1), obj_collisionparent) && movespeed > 1.5)
	    instance_create(x, y, obj_slidecloud)
	perform_collisions()



}
