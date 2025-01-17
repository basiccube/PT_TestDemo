function scr_player_normal()
{
	move = (keyLeft.held + keyRight.held)
	hsp = (move * movespeed)
	mach2 = 0
	
	if (check_solid(x + sign(hsp), y) && move == xscale && !place_meeting(x + xscale, y, obj_slope))
		movespeed = 0
	jumpstop = false
	
	if (grounded && move == -xscale)
	{
		machslideAnim = true
		landAnim = false
		image_index = 0
		movespeed = 0
	}
	
	if (!grounded && !keyJump.pressed)
	{
	    jumpAnim = false
	    state = states.jump
	    machslideAnim = true
	    image_index = 0
	}
	if (keyJump.pressed && grounded && keyUp.held && !keyDown.held && !keyDash.held && move == 0)
	{
		if (!in_water)
			vsp = -11
		else
			vsp = -10
	    state = states.highjump
	    image_index = 0
	    machslideAnim = true
	    jumpAnim = true
	    sound_play(sfx_jump, true, soundtype.player)
	}
	if (keyJump.pressed && grounded && !keyDown.held && sprite_index != spr_player_Sjumpprep && input_buffer_jump >= 8)
	{
		vsp = -9
	    state = states.jump
	    image_index = 0
	    machslideAnim = true
	    jumpAnim = true
	    sound_play(sfx_jump, true, soundtype.player)
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
	if ((keyDown.held && grounded) || check_solid(x, y - 3))
	{
	    state = states.crouch
	    machslideAnim = true
	    landAnim = false
	    crouchAnim = true
	    image_index = 0
	}
	
	if (move != 0)
	{
	    if (movespeed < 4 && !in_water)
	        movespeed += 0.5
		else if (movespeed < 3 && in_water)
			movespeed += 0.5
		else if (floor(movespeed) == 3 && in_water)
			movespeed = 3
	    else if (floor(movespeed) == 4)
	        movespeed = 4
	}
	else
	    movespeed = 0
	if ((movespeed > 4 && !in_water) || (movespeed > 3 && in_water))
	    movespeed -= 0.1
	
	if (keyUp.held && move == 0 && sprite_index != spr_player_Sjumpprep)
	    image_index = 0
	if (keyUp.held && move == 0)
	{
	    landAnim = false
	    sprite_index = spr_player_Sjumpprep
	    if (floor(image_index) == 5)
	        image_speed = 0
	}
	if !(keyUp.held && move == 0)
	{
	    if (machslideAnim == true && landAnim == false)
	    {
	        if (move == 0)
	            sprite_index = spr_player_idle
	        if (move != 0)
	        {
	            machslideAnim = true
	            sprite_index = spr_player_move
	        }
	        if (move != 0)
	            xscale = move
	    }
	    if (landAnim == true)
	    {
	        if (move == 0)
	        {
	            movespeed = 0
	            sprite_index = spr_player_land
	            if (floor(image_index) == 5)
	                landAnim = false
	        }
	        if (move != 0)
	        {
	            sprite_index = spr_player_land2
	            if (floor(image_index) == 4)
	            {
	                landAnim = false
	                sprite_index = spr_player_move
	                image_index = 0
	            }
	        }
	    }
	    if (machslideAnim == false && machhitAnim == false)
	    {
	        sprite_index = spr_player_machslideend
	        if (floor(image_index) == 5)
	            machslideAnim = true
	    }
	    if (machhitAnim == true)
	    {
	        machhitAnim = false
	        machslideAnim = true
	    }
		if (in_water)
			image_speed = 0.2
		else
			image_speed = 0.3
	}
	
	if (keyDash.held && grounded && !(check_solid(x + xscale, y) && !place_meeting(x + xscale, y, obj_slope)))
	{
	    jumpAnim = true
	    state = states.mach1
	    movespeed = 1
	    image_index = 0
	}
	
	if (!instance_exists(obj_cloudeffect) && !place_meeting(x, y, obj_water2) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, y + 43, obj_cloudeffect)
}
