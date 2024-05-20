function scr_player_ladder()
{
	input_get()
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	turning = 0
	jumpstop = 0
	movespeed = 0
	hsp = 0
	if key_up
	{
	    vsp = -2
	    image_speed = 0.35
	}
	else if key_down
	{
	    vsp = 6
	    image_speed = -0.35
	}
	else
	    vsp = 0
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false
	if (!(place_meeting(x, y, obj_ladder)))
	{
	    landAnim = false
	    jumpAnim = false
	    state = states.normal
	    machslideAnim = true
	    image_index = 0
	    vsp = -8
	}
	if key_jump
	{
	    ladderbuffer = 20
	    jumpAnim = true
	    state = states.jump
	    machslideAnim = true
	    vsp = -9
	    image_index = 0
	}
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, y, obj_onewaywall))))
	{
	    state = states.normal
	    image_index = 0
	}
	if ((!key_up) && (!key_down))
	    sprite_index = spr_player_ladder
	else if (key_down && (!key_up))
	    sprite_index = spr_player_ladderdown
	else if ((!key_down) && key_up)
	{
	    sprite_index = spr_player_laddermove
	    sound_play(sfx_climb, true, soundtype.player)
	}
	perform_collisions()
}
