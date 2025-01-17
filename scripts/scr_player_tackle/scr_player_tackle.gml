function scr_player_tackle()
{
	combo = 0
	movespeed = 0
	mach2 = 0
	if (grounded && vsp > 0)
	    hsp = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = true
	
	if (floor(image_index) == image_number - 1)
	    state = states.normal
	
	sprite_index = spr_player_tackle
	image_speed = 0.35
}
