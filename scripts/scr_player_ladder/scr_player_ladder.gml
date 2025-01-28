function scr_player_ladder()
{
	jumpAnim = true
	landAnim = false
	machslideAnim = false
	crouchAnim = false
	machhitAnim = false
	jumpstop = false
	mach2 = 0
	
	movespeed = 0
	hsp = 0
	if (keyUp.held && !keyDown.held)
	{
	    vsp = -2
	    image_speed = 0.35
		sprite_index = spr_player_laddermove
		sound_play(sfx_climb, true, soundtype.player)
	}
	else if (keyDown.held && !keyUp.held)
	{
	    vsp = 6
	    image_speed = -0.35
		sprite_index = spr_player_ladderdown
	}
	else
	{
	    vsp = 0
		sprite_index = spr_player_ladder
	}
	
	if !place_meeting(x, y, obj_ladder)
	{
	    landAnim = false
	    jumpAnim = false
	    state = states.normal
	    machslideAnim = false
	    image_index = 0
	    vsp = -8
	}
	if keyJump.pressed
	{
	    ladderbuffer = 20
	    jumpAnim = true
	    state = states.jump
	    machslideAnim = false
	    vsp = -9
	    image_index = 0
	}
	
	if (keyDown.held && grounded && !place_meeting(x, y, obj_platform))
	{
	    state = states.normal
	    image_index = 0
	}
}
