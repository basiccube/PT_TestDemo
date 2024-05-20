function scr_player_crouch()
{
	input_get()
	move = (key_left + key_right)
	hsp = (move * movespeed)
	mask_index = spr_crouchmask
	turning = 0
	if ((place_meeting((x + 1), y, obj_collisionparent) && xscale == 1) || (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1))
	    movespeed = 0
	if (xscale == 1 && move == -1)
	    movespeed = 0
	if (xscale == -1 && move == 1)
	    movespeed = 0
	if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && (!key_jump))
	{
	    jumpAnim = false
	    state = states.crouchjump
	    movespeed = 4
	    crouchAnim = true
	    image_index = 0
	}
	if (key_jump && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, (y - 16), obj_collisionparent))) && (!(place_meeting(x, (y - 32), obj_collisionparent))))
	{
		vsp = -9.2
	    state = states.crouchjump
	    movespeed = 4
	    image_index = 0
	    crouchAnim = true
	    jumpAnim = true
	    sound_play(sfx_jump, true, soundtype.player)
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!key_down) && (!(place_meeting(x, (y - 16), obj_collisionparent))) && (!(place_meeting(x, (y - 32), obj_collisionparent))) && (!key_jump))
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
	perform_collisions()



}
