function scr_player_bump()
{
	input_get()
	movespeed = 0
	mach2 = 0
	start_running = 1
	alarm[4] = 14
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	    hsp = 0
	if (floor(image_index) == 6)
	    state = states.normal
	sprite_index = spr_player_bump
	image_speed = 0.35
	perform_collisions()
}
