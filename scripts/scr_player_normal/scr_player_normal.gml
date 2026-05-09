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
		machslideAnim = false
		landAnim = false
		image_index = 0
		movespeed = 0
	}
	
	if (!grounded && !keyJump.pressed)
	{
		machslideAnim = false
	    jumpAnim = false
		image_index = 0
	    state = states.jump
	}
	
	if keyJump.pressed
	    input_buffer_jump = 0
	
	var sjumpPrep = (keyUp.held && move == 0)
	if (grounded && vsp > 0 && (keyJump.pressed || input_buffer_jump < 8) && !keyDown.held && !keyDash.held)
	{
		if sjumpPrep
		{
			vsp = (in_water ? -10 : -11)
		    state = states.highjump
		}
		else
		{
			vsp = -9
		    state = states.jump
		}
		
		machslideAnim = false
		jumpAnim = true
		image_index = 0
		
		if !place_meeting(x, y, obj_water2)
			instance_create(x, y, obj_landcloud)
		sound_play(sfx_jump, true, soundtype.player)
	}
	
	if ((keyDown.held && grounded) || check_solid(x, y - 3))
	{
	    state = states.crouch
	    machslideAnim = false
	    landAnim = false
	    crouchAnim = true
	    image_index = 0
	}
	
	var maxSpeed = 4
	if in_water
		maxSpeed = 3
	
	if (move != 0)
	{
	    if (movespeed < maxSpeed)
	        movespeed += 0.5
	    else if (floor(movespeed) == maxSpeed)
	        movespeed = maxSpeed
	}
	else
	    movespeed = 0
	
	if (movespeed > maxSpeed)
	    movespeed -= 0.1
	
	if sjumpPrep
	{
		if (sprite_index != spr_player_Sjumpprep)
			image_index = 0
		
	    landAnim = false
	    sprite_index = spr_player_Sjumpprep
	    if (floor(image_index) == image_number - 1)
	        image_speed = 0
	}
	else
	{
	    if (!machslideAnim && !landAnim)
	    {
	        if (move == 0)
	            sprite_index = spr_player_idle
	        else if (move != 0)
	        {
	            machslideAnim = false
	            sprite_index = spr_player_move
	        }
			
	        if (move != 0)
	            xscale = move
	    }
		
	    if landAnim
	    {
	        if (move == 0)
	        {
	            movespeed = 0
	            sprite_index = spr_player_land
	            if (floor(image_index) == image_number - 1)
	                landAnim = false
	        }
	        else if (move != 0)
	        {
	            sprite_index = spr_player_land2
	            if (floor(image_index) == image_number - 1)
	            {
	                landAnim = false
	                sprite_index = spr_player_move
	                image_index = 0
	            }
	        }
	    }
		
	    if (machslideAnim && !machhitAnim)
	    {
	        sprite_index = spr_player_machslideend
	        if (floor(image_index) == image_number - 1)
	            machslideAnim = false
	    }
		
	    if machhitAnim
	    {
	        machhitAnim = false
	        machslideAnim = false
	    }
		
		image_speed = (in_water ? 0.2 : 0.3)
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
