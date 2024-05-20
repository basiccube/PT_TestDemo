function scr_player_barrelroll()
{
	input_get()
	mask_index = spr_crouchmask
	hsp = (xscale * movespeed)
	movespeed = 10
	mach2 = 35
	if (input_buffer_jump < 8 && place_meeting(x, (y + 1), obj_collisionparent))
	    vsp = -7
	if key_jump
	    input_buffer_jump = 0
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1)
	{
	    barrel = 0
	    mask_index = spr_player_mask
	    state = states.bump
	    hsp = -2
	    vsp = -2
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1)
	{
	    barrel = 0
	    mask_index = spr_player_mask
	    state = states.bump
	    hsp = 2
	    vsp = -2
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	}
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	sprite_index = spr_player_barrelroll
	image_speed = 0.45
	perform_collisions()
}
