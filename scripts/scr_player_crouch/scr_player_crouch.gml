function scr_player_crouch()
{
	move = (keyLeft.held + keyRight.held)
	hsp = (move * movespeed)
	mask_index = spr_crouchmask
	
	if (check_solid(x + xscale, y) && move != 0 && place_meeting(x + sign(hsp), y, obj_slope))
		movespeed = 0
	if (move == -xscale)
		movespeed = 0

	if (!grounded && !keyJump.pressed)
	{
	    jumpAnim = false
	    state = states.crouchjump
	    movespeed = 4
	    crouchAnim = true
	    image_index = 0
	}
	if (keyJump.pressed && grounded && !check_solid(x, y - 16) && !check_solid(x, y - 32))
	{
		vsp = -9.2
	    state = states.crouchjump
	    movespeed = 4
	    image_index = 0
	    crouchAnim = true
	    jumpAnim = true
	    sound_play(sfx_jump, true, soundtype.player)
	}
	if (grounded && !keyDown.held && !check_solid(x, y - 16) && !check_solid(x, y - 32) && !keyJump.pressed)
	{
	    state = states.normal
	    movespeed = 0
	    crouchAnim = true
	    jumpAnim = true
	    image_index = 0
	    mask_index = spr_player_mask
	}
	
	if (movespeed < 2)
	    movespeed += 0.5
	else if (movespeed >= 2)
		movespeed = 2
	
	if (crouchAnim == false)
	{
	    if (move == 0)
	        sprite_index = spr_player_crouch
	    if (move != 0)
	        sprite_index = spr_player_crawl
	}
	if (crouchAnim == true)
	{
	    sprite_index = spr_player_couchstart
	    if (floor(image_index) == 2)
	        crouchAnim = false
	}
	if (move != 0)
	{
	    xscale = move
	    crouchAnim = false
	}
	if (move != 0 && hsp != 0)
		sound_play(sfx_crawl, true, soundtype.player)
	
	if (in_water)
		image_speed = 0.2
	else
		image_speed = 0.35
}
