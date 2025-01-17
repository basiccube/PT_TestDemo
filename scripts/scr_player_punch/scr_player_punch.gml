function scr_player_punch()
{
	hsp = (xscale * movespeed)
	if (movespeed >= 0)
		movespeed -= 0.2
	if (movespeed <= 0)
		state = states.normal
	
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = true
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
		player_bump()
	
	if (floor(image_index) == image_number - 1)
	    image_speed = 0
	else
		image_speed = 0.35
	sprite_index = spr_player_punch
}
