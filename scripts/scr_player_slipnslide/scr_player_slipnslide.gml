function scr_player_slipnslide()
{
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = false
	machhitAnim = false
	
	hsp = (xscale * movespeed)
	if (movespeed >= 0)
	    movespeed -= 0.2
	
	if (movespeed <= 0)
	{
	    state = states.normal
	    movespeed = 0
	    mach2 = 0
	    image_index = 0
	}
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	    player_bump(-2)
	
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
	
	sound_play(sfx_slide, true, soundtype.player)
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 1.5)
	    instance_create(x, y, obj_slidecloud)
}
