function scr_player_victory()
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
	sprite_index = spr_player_victory
	if (floor(image_index) == 37)
	    image_speed = 0
	else
	    image_speed = 0.35
	perform_collisions()
}
