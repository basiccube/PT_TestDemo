function scr_player_current()
{
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
		if (movespeed <= 0)
		{
			state = states.normal
			movespeed = 0
			mach2 = 0
			image_index = 0
		}
		
		if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
			player_bump(-2)
	}
	
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
}
