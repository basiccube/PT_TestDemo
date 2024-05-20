function scr_player_stunned()
{
	input_get()
	hsp = 0
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
	sprite_index = spr_player_stunned
	image_speed = 0.35
	if (floor(image_index) == (image_number - 1))
	{
	    state = states.normal
	    image_index = 0
	}
	sound_play(sfx_hurt, true, soundtype.player)
	perform_collisions()
}
