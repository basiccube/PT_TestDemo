function scr_player_crouchjump()
{
	input_get()
	move = (key_left + key_right)
	mask_index = spr_crouchmask
	hsp = (move * movespeed)
	if (xscale == 1 && move == -1)
	    movespeed = 0
	if (xscale == -1 && move == 1)
	    movespeed = 0
	if (movespeed < 2)
	    movespeed += 0.5
	else if (movespeed >= 2)
		movespeed = 2
	if ((!key_jump2) && jumpstop == 0 && jumpAnim == true)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (vsp > 12 && !in_water)
	    state = states.freefall
	if (place_meeting(x, (y - 1), obj_collisionparent) && jumpstop == 0 && jumpAnim == true)
	{
	    vsp = grav
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && key_down)
	{
	    state = states.crouch
	    jumpAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!key_down) && (!(place_meeting(x, (y - 16), obj_collisionparent))))
	{
	    state = states.normal
	    jumpAnim = true
	    landAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    mask_index = spr_player_mask
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    state = states.crouch
	    jumpAnim = true
	    crouchAnim = true
	    image_index = 0
	    jumpstop = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    sound_play(sfx_land, true, soundtype.stereo)
	}
	if (jumpAnim == true)
	{
	    sprite_index = spr_player_crouchjump
	    if (floor(image_index) == 8)
	        jumpAnim = false
	}
	if (jumpAnim == false)
	    sprite_index = spr_player_crouchfall
	if (move != 0)
	    xscale = move
	if (in_water)
		image_speed = 0.2
	else
		image_speed = 0.35
	perform_collisions()



}
