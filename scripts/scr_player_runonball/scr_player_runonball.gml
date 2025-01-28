function scr_player_runonball()
{
	move = (keyLeft.held + keyRight.held)
	if (!keyDash.held)
	    hsp = (move * movespeed)
	else
	    hsp = (xscale * movespeed)
	jumpstop = false

	if !place_meeting(x, y + 1, obj_runonball)
	{
	    mach2 = 0
	    state = states.normal
	    jumpAnim = true
	}
	
	if (keyJump.pressed && grounded && !keyDown.held && !keyDash.held)
	{
	    vsp = -7
	    state = states.jump
	    image_index = 0
	    machslideAnim = false
	    jumpAnim = true
	    sound_play(sfx_jump, true, soundtype.player)
	}
	
	movespeed = 2.5
	if (keyDash.held && grounded)
	{
	    if (mach2 < 35)
	    {
	        mach2++
	        movespeed = 4
	    }
	    if (mach2 >= 35)
	        movespeed = 6
	}
	if (!keyDash.held)
	    mach2 = 0
	
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
}
