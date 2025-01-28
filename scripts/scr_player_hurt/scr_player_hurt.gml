function scr_player_hurt()
{
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
	alarm[7] = 60
	
	if (grounded && hurtbounce == 2 && vsp > 0)
	    hsp = 0
	if (grounded && hurtbounce == 1 && vsp > 0)
	{
	    hurtbounce = 2
	    vsp = -3
	}
	if (grounded && hurtbounce == 0 && vsp > 0)
	{
	    hurtbounce = 1
	    vsp = -5
	}
	
	if (alarm[3] == -1)
		alarm[3] = 60
	
	sprite_index = spr_player_hurt
	image_speed = 0.35
}
