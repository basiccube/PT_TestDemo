function scr_player_freefallland()
{
	input_get()
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	movespeed = 0
	start_running = 1
	alarm[4] = 14
	vsp = 0
	hsp = 0
	sprite_index = spr_player_freefallland
	if (floor(image_index) == 6)
	    state = states.normal
	perform_collisions()
}
