function scr_player_barrelroll()
{
	mask_index = spr_crouchmask
	hsp = (xscale * movespeed)
	movespeed = 10
	mach2 = 35
	
	if (input_buffer_jump < 8 && grounded)
	    vsp = -7
	if keyJump.pressed
	    input_buffer_jump = 0
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
		player_bump(-2, -2)
		barrel = false
		repeat (10)
			instance_create(x + random_range(15, -15), y + random_range(15, -15), obj_wooddebris)
	}
	
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	
	sprite_index = spr_player_barrelroll
	image_speed = 0.45
}
