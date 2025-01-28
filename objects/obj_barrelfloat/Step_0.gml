if (obj_player.y < y && enterbarrel == 1 && place_meeting(x, y, obj_player))
{
	with (obj_player)
	{
		if (state != states.hurt && !barrel && vsp > 0)
		{
			state = states.barrel
			vsp = 10
			
			sprite_index = spr_player_barrelidle
			image_index = 0
			x = other.x
			xscale = other.image_xscale
			instance_destroy(other.id)
		}
	}
}

if place_meeting(x, y, obj_water2)
    vsp -= 1
else
    vsp = 0
perform_collisions(collisionflags.ignoreplatforms)

