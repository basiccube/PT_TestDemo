function scr_player_barrelmach2()
{
	input_get()
	hsp = (xscale * movespeed)
	movespeed = 10
	if (!(place_meeting(x, (y + 1), obj_wall)))
	{
	    state = states.barrelfall
	    image_index = 0
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_wall))
	{
	    state = states.barrelnormal
	    image_index = 0
	    mach2 = 0
	}
	if (place_meeting((x + 1), y, obj_wall) && xscale == 1)
	{
	    barrel = 0
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
	if (place_meeting((x - 1), y, obj_wall) && xscale == -1)
	{
	    barrel = 0
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
	sprite_index = spr_player_barrelmach
	image_speed = 0.35
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_wall))
	    instance_create(x, y, obj_dashcloud)
	perform_collisions()



}
