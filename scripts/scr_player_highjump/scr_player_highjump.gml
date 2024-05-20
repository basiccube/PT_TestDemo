function scr_player_highjump()
{
	input_get()
	move = (key_left + key_right)
	hsp = (move * movespeed)
	if ((place_meeting((x + 1), y, obj_collisionparent) && xscale == 1) || (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1))
	    movespeed = 0
	if (move == 0)
	    movespeed = 0
	if (move != 0 && ((movespeed < 5 && !in_water) || (movespeed < 3 && in_water)))
	    movespeed += 0.5
	if (xscale == 1 && move == -1)
	    movespeed = 0
	if (xscale == -1 && move == 1)
	    movespeed = 0
	landAnim = true
	if ((!key_jump2) && jumpstop == 0 && vsp < 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (ladderbuffer > 0)
	    ladderbuffer--
	if (place_meeting(x, (y - 1), obj_collisionparent) && jumpstop == 0 && jumpAnim == true)
	{
	    vsp = grav
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	{
	    if key_attack
	        landAnim = false
	    state = states.normal
	    jumpAnim = true
	    jumpstop = 0
	    image_index = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && input_buffer_jump < 8 && (!key_down) && vsp > 0)
	{
		vsp = -9
	    state = states.jump
	    jumpAnim = true
	    jumpstop = 0
	    image_index = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_jump, true, soundtype.player)
	}
	if key_jump
	    input_buffer_jump = 0
	if (jumpAnim == true)
	{
	    sprite_index = spr_player_Sjumpstart
	    if (floor(image_index) == 3)
	        jumpAnim = false
	}
	if (jumpAnim == false)
	    sprite_index = spr_player_Sjump
	if (move != 0)
	    xscale = move
	if (in_water)
		image_speed = 0.2
	else
		image_speed = 0.35
	perform_collisions()
}
