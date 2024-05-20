function scr_player_barrelnormal()
{
	input_get()
	mask_index = spr_player_mask
	move = (key_left + key_right)
	hsp = (move * movespeed)
	if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && (!key_jump))
	{
	    state = states.barrelfall
	    image_index = 0
	    hsp = 0
	}
	if ((key_down && place_meeting(x, (y + 1), obj_collisionparent)) || place_meeting(x, (y - 3), obj_collisionparent))
	{
	    state = states.barrelcrouch
	    image_index = 0
	}
	if (key_attack && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    movespeed = 0
	    state = states.barrelmach1
	    landAnim = false
	}
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
	movespeed = 2.5
	if (move == 0)
	    sprite_index = spr_player_barrelidle
	if (move != 0)
	{
	    sprite_index = spr_player_barrelmove
	    xscale = move
	}
	image_speed = 0.35
	perform_collisions()
}