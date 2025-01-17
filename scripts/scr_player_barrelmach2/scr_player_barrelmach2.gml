function scr_player_barrelmach2()
{
	hsp = (xscale * movespeed)
	movespeed = 10
	
	if !grounded
	{
	    state = states.barrelfall
	    image_index = 0
	}
	if (!keyDash.held && grounded)
	{
	    state = states.barrelnormal
	    image_index = 0
	    mach2 = 0
	}
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
		player_bump(-2, -2)
		barrel = false
		repeat (10)
			instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris)
	}
	
	sprite_index = spr_player_barrelmach
	image_speed = 0.35
	
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	if (!instance_exists(obj_dashcloud) && grounded)
	    instance_create(x, y, obj_dashcloud)
}
