function scr_player_jump()
{
	input_get()
	move = (key_left + key_right)
	if (momemtum == 0)
	    hsp = (move * movespeed)
	else
	    hsp = (xscale * movespeed)
	if (move == 0 && momemtum == 0)
	    movespeed = 0
	if (move != 0 && ((movespeed < 4 && !in_water) || (movespeed < 2 && in_water)))
	    movespeed += 0.5
	if ((place_meeting((x + 1), y, obj_collisionparent) && move == 1) || (place_meeting((x - 1), y, obj_collisionparent) && move == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes)))))
	    movespeed = 0
	if (xscale == 1 && move == -1)
	{
	    mach2 = 0
	    movespeed = 0
	    momemtum = 0
	}
	if (xscale == -1 && move == 1)
	{
	    mach2 = 0
	    momemtum = 0
	    movespeed = 0
	}
	if key_down
	{
	    if (vsp < 0.5)
	        vsp /= 2
	    state = states.crouchjump
	}
	landAnim = true
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == false)
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
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0 && key_attack && momemtum == 1)
	{
	    landAnim = false
	    state = states.mach1
	    jumpAnim = true
	    jumpstop = 0
	    image_index = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0 && ((!key_attack) || momemtum == 0))
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
	    stompAnim = false
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
	if (stompAnim == false)
	{
	    if (jumpAnim == true)
	    {
	        if (move != 0 || momemtum == 1)
	            sprite_index = spr_player_jump2
	        else
	            sprite_index = spr_player_jump
	        if (floor(image_index) == 8)
	            jumpAnim = false
	    }
	    if (jumpAnim == false)
	    {
	        if (move != 0 || momemtum == 1)
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
	perform_collisions()



}
