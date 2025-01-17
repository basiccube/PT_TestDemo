function scr_player_machslide()
{
	mach2 = 0
	hsp = (xscale * movespeed)
	move = (keyLeft.held + keyRight.held)
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
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	    player_bump()
	
	if machslideAnim
	{
		if machhitAnim
		{
			sprite_index = spr_player_crouchslidestart
			if (floor(image_index) == image_number - 1)
				machslideAnim = false
		}
		else
		{
			sprite_index = spr_player_machslidestart
			if (floor(image_index) == image_number - 1)
				machslideAnim = false
		}
	}
	else
	{
		if machhitAnim
			sprite_index = spr_player_crouchslide
		else
			sprite_index = spr_player_machslide
	}
	
	image_speed = 0.35
	sound_play(sfx_slide, true, soundtype.player)
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
	    instance_create(x, y, obj_slidecloud)
}
