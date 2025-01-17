function scr_player_crouchslide()
{
	hsp = (xscale * movespeed)
	if (movespeed >= 0)
	    movespeed -= 0.2
	mask_index = spr_crouchmask
	
	if (hsp == 0 || (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope)) || movespeed <= 0)
	{
	    state = states.crouch
	    movespeed = 0
	    mach2 = 0
		crouchAnim = true
	    image_index = 0
	}
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	    player_bump()
	
	sprite_index = spr_player_crouchslip
	image_speed = 0.35
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
	    instance_create(x, y, obj_slidecloud)
}
