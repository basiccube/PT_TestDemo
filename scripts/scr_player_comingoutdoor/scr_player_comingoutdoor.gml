function scr_player_comingoutdoor()
{
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = true
	machhitAnim = false
	hsp = 0
	
	if (floor(image_index) == image_number - 1)
	{
	    movespeed = 0
	    state = states.normal
	    image_alpha = 1
	}
	
	sprite_index = spr_player_walkfront
	if (image_alpha < 1)
		image_alpha += 0.1
	image_speed = 0.35
}
