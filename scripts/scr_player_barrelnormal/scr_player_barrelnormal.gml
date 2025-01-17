function scr_player_barrelnormal()
{
	mask_index = spr_player_mask
	move = (keyLeft.held + keyRight.held)
	hsp = (move * movespeed)
	
	if (!grounded && !keyJump.pressed)
	{
	    state = states.barrelfall
	    image_index = 0
	    hsp = 0
	}
	
	if ((keyDown.held && grounded) || check_solid(x, y - 3))
	{
	    state = states.barrelcrouch
	    image_index = 0
	}
	if (keyDash.held && grounded)
	{
	    movespeed = 0
	    state = states.barrelmach1
	    landAnim = false
	}
	
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
	movespeed = 2.5
	
	if (move == 0)
	    sprite_index = spr_player_barrelidle
	if (move != 0)
	{
	    sprite_index = spr_player_barrelmove
	    xscale = move
	}
	
	image_speed = 0.35
}
