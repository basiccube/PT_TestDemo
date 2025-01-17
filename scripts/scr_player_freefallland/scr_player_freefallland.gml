function scr_player_freefallland()
{
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = false
	machhitAnim = false
	movespeed = 0
	
	hsp = 0
	vsp = 0
	
	sprite_index = spr_player_freefallland
	if (floor(image_index) == image_number - 1)
	    state = states.normal
}
