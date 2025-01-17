function scr_player_barrelmach1()
{
	hsp = (xscale * movespeed)
	if (movespeed <= 8)
	    movespeed += 0.2
	
	if grounded
	{
	    if (mach2 < 35)
	        mach2++
	    if (mach2 >= 35)
	    {
	        image_index = 0
	        state = states.barrelslipnslide
	        flash = 1
	    }
	}
	if !grounded
	{
	    state = states.barrelfall
	    image_index = 0
	    hsp = 0
	}
	if (!keyDash.held && grounded)
	{
	    state = states.barrelnormal
	    image_index = 0
	    mach2 = 0
	}
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
		state = states.barrelfall
		hsp = -2 * xscale
		vsp = -2
		mach2 = 0
		image_index = 0
		instance_create(x + (10 * xscale), y + 10, obj_bumpeffect)
	}
	
	sprite_index = spr_player_barrelmach
	image_speed = 0.35
	
	if (!instance_exists(obj_dashcloud) && grounded)
	    instance_create(x, y, obj_dashcloud)
}
