function scr_player_door()
{
	input_get()
	hsp = 0
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false
	sprite_index = spr_player_lookdoor
	if (floor(image_index) == 4)
	    image_speed = 0
	if (instance_exists(obj_doortransition))
	{
		if (obj_doortransition.image_xscale > 40)
			image_alpha -= 0.1
	}
}
