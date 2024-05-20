function scr_player_hurt()
{
	input_get()
	combo = 0
	mach2 = 0
	bounce = 0
	jumpAnim = true
	dashAnim = true
	if place_meeting(x, (y + 1), obj_collisionparent)
	    landAnim = false
	else
	    landAnim = true
	jumpstop = 0
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	movespeed = 0
	hurted = 1
	turning = 0
	if instance_exists(obj_hook)
	    obj_hook.hooked = 0
	alarm[5] = 2
	alarm[7] = 60
	if (place_meeting(x, (y + 1), obj_collisionparent) && hurtbounce == 2 && vsp > 0)
	{
	    start_running = 1
	    alarm[4] = 14
	    hsp = 0
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && hurtbounce == 1 && vsp > 0)
	{
	    hurtbounce = 2
	    vsp = -3
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && hurtbounce == 0 && vsp > 0)
	{
	    hurtbounce = 1
	    vsp = -5
	}
	if (alarm[3] == -1)
		alarm[3] = 60
	sprite_index = spr_player_hurt
	image_speed = 0.35
	perform_collisions()
}
