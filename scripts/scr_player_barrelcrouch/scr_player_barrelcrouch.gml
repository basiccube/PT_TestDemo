function scr_player_barrelcrouch()
{
	input_get()
	mask_index = spr_player_mask
	hsp = 0
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!key_down) && image_speed == 0)
	{
	    state = states.barrelnormal
	    movespeed = 2
	    image_index = 0
	}
	sprite_index = spr_player_barrelcrouch
	if (floor(image_index) == 5)
	    image_speed = 0
	else
	    image_speed = 0.35
	perform_collisions()
}
