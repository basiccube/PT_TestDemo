function scr_player_jump()
{
	move = (keyLeft.held + keyRight.held)
	if (momemtum == 0)
	    hsp = (move * movespeed)
	else
	    hsp = (xscale * movespeed)
	
	if (move == 0 && momemtum == 0)
	    movespeed = 0
	if (move != 0 && ((movespeed < 4 && !in_water) || (movespeed < 2 && in_water)))
	    movespeed += 0.5
	
	if (check_solid(x + xscale, y) && move != 0 && !place_meeting(x + sign(hsp), y, obj_slope))
	    movespeed = 0
	if (move == -xscale)
	{
		mach2 = 0
		movespeed = 0
		momemtum = false
	}
	
	if keyDown.held
	{
	    if (vsp < 0.5)
	        vsp /= 2
	    state = states.crouchjump
	}
	
	landAnim = true
	if (!keyJump.held && !jumpstop && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = true
	}
	if (ladderbuffer > 0)
	    ladderbuffer--
	if (check_solid(x, y - 1) && !jumpstop && jumpAnim)
	{
	    vsp = grav
	    jumpstop = true
	}
	
	if (grounded && vsp > 0 && keyDash.held && momemtum)
	{
	    landAnim = false
	    state = states.mach1
	    jumpAnim = true
	    jumpstop = false
	    image_index = 0
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (grounded && vsp > 0 && (!keyDash.held || !momemtum))
	{
	    if keyDash.held
	        landAnim = false
	    state = states.normal
	    jumpAnim = true
	    jumpstop = false
	    image_index = 0
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (grounded && input_buffer_jump < 8 && !keyDown.held && vsp > 0)
	{
		vsp = -9
	    state = states.jump
	    jumpAnim = true
	    jumpstop = false
	    image_index = 0
		
	    if !place_meeting(x, y, obj_water2)
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_jump, true, soundtype.player)
	}
	if keyJump.pressed
	    input_buffer_jump = 0
	
	if (sprite_index != spr_player_Sjump)
	{
	    if jumpAnim
	    {
	        if (move != 0 || momemtum)
	            sprite_index = spr_player_jump2
	        else
	            sprite_index = spr_player_jump
			
	        if (floor(image_index) == image_number - 1)
	            jumpAnim = false
	    }
	    else
	    {
	        if (move != 0 || momemtum)
	            sprite_index = spr_player_fall2
	        else
	            sprite_index = spr_player_fall
	    }
	}
	
	if (move != 0)
	    xscale = move
	
	if (in_water)
		image_speed = 0.2
	else
		image_speed = 0.35
}
