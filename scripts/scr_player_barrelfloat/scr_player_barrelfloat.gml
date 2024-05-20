function scr_player_barrelfloat()
{
	input_get()
	mask_index = spr_player_mask
	move = (key_left + key_right)
	hsp = (move * movespeed)
	vsp = 0
	if key_jump
	{
	    jumpstop = 1
	    jumpAnim = true
	    state = states.jump
	    landAnim = false
	    vsp = -9
	    with (instance_create(x, y + 16, obj_barrelfloat))
	        image_xscale = other.image_xscale
	    image_index = 0
	    barrel = 0
	}
	movespeed = 2.5
	if (move != 0)
	    xscale = move
	sprite_index = spr_player_barrelfloat
	image_speed = 0.35
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
	perform_collisions()
}