function scr_player_comingoutdoor()
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
	crouchAnim = true
	machhitAnim = false
	hsp = 0
	if (floor(image_index) == (image_number - 1))
	{
	    start_running = 1
	    movespeed = 0
	    state = states.normal
	    image_alpha = 1
	}
	sprite_index = spr_player_walkfront
	if (image_alpha < 1)
		image_alpha += 0.1
	image_speed = 0.35
	perform_collisions()
}
