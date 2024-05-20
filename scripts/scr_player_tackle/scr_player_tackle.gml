function scr_player_tackle()
{
	input_get()
	combo = 0
	movespeed = 0
	mach2 = 0
	start_running = 1
	alarm[4] = 14
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	    hsp = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	if (floor(image_index) == 6)
	    state = states.normal
	sprite_index = spr_player_tackle
	image_speed = 0.35
	perform_collisions()
}
