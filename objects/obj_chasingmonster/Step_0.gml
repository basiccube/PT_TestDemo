if (vsp < 12)
    vsp += grav
image_speed = 0.35

with (obj_boulder)
{
	if place_meeting(x + hsp, y, other)
	{
		instance_destroy(obj_monsterdetection)
		instance_destroy(other.id)
	}
	if place_meeting(x + sign(hsp), y, other)
	{
		instance_destroy(obj_monsterdetection)
		instance_destroy(other.id)
	}
}

if (!waitForKey || (waitForKey && obj_player.state != states.keyget && global.key))
{
	if grounded
	{
	    image_xscale = (-(sign((x - obj_player.x))))
	    climbing = 0
	}
	if (climbing == 0)
	{
	    if (place_meeting((x + 1), y, obj_solid) && image_xscale == 1)
	        vsp = -5
	    if (place_meeting((x - 1), y, obj_solid) && image_xscale == -1)
	        vsp = -5
	    if place_meeting(x, (y - 1), obj_solid)
	        climbing = 1
	}
	if (roam == 0 && attack == 0)
	{
	    if (!((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))))
	        hsp = (image_xscale * 10)
	    else
	        attack = 1
	}
	if (roam == 0 && attack == 1 && attacked == 0)
	{
	    alarm[1] = 80
	    attacked = 1
	    hsp = 0
	}

	if (place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player))
	{
		if (obj_player.state != states.door && obj_player.state != states.hang)
			player_hurt(id)
	}
}

perform_collisions(collisionflags.ignoreplatforms)

