hsp = (image_xscale * 10)
if (vsp < 12)
    vsp += grav
if check_solid(x - 1, y)
{
    with (obj_player)
    {
        if (state == states.boulder)
        {
            barrel = 0
            mask_index = spr_player_mask
            state = states.bump
            hsp = 2
            vsp = -2
            mach2 = 0
            image_index = 0
			
			instance_create(x + 10, y + 10, obj_bumpeffect)
			repeat (10)
			{
				with (create_debris(x + random_range(-15, 15), y + random_range(-15, 15), spr_wooddebris))
				{
					hsp = random_range(-4, 4)
					vsp = random_range(-8, -6)
					rotate = true
				}
			}
        }
    }
    instance_destroy()
}
perform_collisions(collisionflags.ignoreplatforms)

