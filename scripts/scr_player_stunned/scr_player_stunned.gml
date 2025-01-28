function scr_player_stunned()
{
	hsp = 0
	combo = 0
	mach2 = 0
	jumpAnim = true
	if grounded
	    landAnim = false
	else
	    landAnim = true
	jumpstop = false
	machslideAnim = false
	crouchAnim = false
	machhitAnim = false
	movespeed = 0
	hurted = true
	
	if instance_exists(obj_hook)
	    obj_hook.hooked = 0
	alarm[5] = 2
	
	sprite_index = spr_player_stunned
	image_speed = 0.35
	
	if (floor(image_index) == image_number - 1)
	{
	    state = states.normal
	    image_index = 0
	}
	
	sound_play(sfx_hurt, true, soundtype.player)
}
