function scr_player_door()
{
	hsp = 0
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = false
	crouchAnim = true
	machhitAnim = false
	
	sprite_index = spr_player_lookdoor
	if (floor(image_index) == image_number - 1)
	    image_speed = 0
	
	with (obj_doortransition)
	{
		if (image_xscale > 40)
			other.image_alpha -= 0.1
	}
}
