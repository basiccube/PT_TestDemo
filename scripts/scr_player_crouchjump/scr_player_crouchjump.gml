function scr_player_crouchjump()
{
	move = (keyLeft.held + keyRight.held)
	mask_index = spr_crouchmask
	hsp = (move * movespeed)
	
	if (move == -xscale)
		movespeed = 0
	
	if (movespeed < 2)
	    movespeed += 0.5
	else if (movespeed >= 2)
		movespeed = 2
	
	if (!keyJump.held && !jumpstop && jumpAnim)
	{
	    vsp /= 2
	    jumpstop = true
	}
	if (vsp > 12 && !in_water)
	    state = states.freefall
	if (check_solid(x, y - 1) && !jumpstop && jumpAnim)
	{
	    vsp = grav
	    jumpstop = true
	}
	
	if (grounded && keyDown.held)
	{
	    state = states.crouch
	    jumpAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = false
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (grounded && !keyDown.held && !check_solid(x, y - 16))
	{
	    state = states.normal
	    jumpAnim = true
	    landAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = false
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	}
	if grounded
	{
	    state = states.crouch
	    jumpAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = false
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	
	if jumpAnim
	{
	    sprite_index = spr_player_crouchjump
	    if (floor(image_index) == image_number - 1)
	        jumpAnim = false
	}
	else
	    sprite_index = spr_player_crouchfall
	
	if (move != 0)
	    xscale = move
	if (in_water)
		image_speed = 0.2
	else
		image_speed = 0.35
}
