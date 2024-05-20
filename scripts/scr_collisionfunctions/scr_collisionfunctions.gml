function perform_collisions()
{
	repeat abs(vsp)
	{
	    if (!place_meeting(x, y + sign(vsp), obj_collisionparent))
	        y += sign(vsp)
	    else
		{
	        vsp = 0
			break
		}
	}

	repeat abs(hsp)
	{
	    if (place_meeting(x + sign(hsp), y, obj_collisionparent) && !place_meeting(x + sign(hsp), y - 1, obj_collisionparent))
			y--
	
	    if (!place_meeting((x + sign(hsp)), y, obj_collisionparent) && !place_meeting(x + sign(hsp), y + 1, obj_collisionparent) && place_meeting(x + sign(hsp), y + 2, obj_collisionparent))
	        y++
	
	    if (!place_meeting(x + sign(hsp), y, obj_collisionparent))
	        x += sign(hsp)
	    else
		{
	        hsp = 0
			break
		}
	}

	if (vsp < 14) // gravity cap
	    vsp += grav
}

function perform_solid_collisions()
{
	repeat abs(vsp)
	{
	    if (!place_meeting(x, y + sign(vsp), obj_enemiesbumpable))
	        y += sign(vsp)
	    else
		{
	        vsp = 0
			break
		}
	}

	repeat abs(hsp)
	{
	    if (place_meeting(x + sign(hsp), y, obj_enemiesbumpable) && !place_meeting(x + sign(hsp), y - 1, obj_enemiesbumpable))
			y--
	
	    if (!place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && !place_meeting(x + sign(hsp), y + 1, obj_enemiesbumpable) && place_meeting(x + sign(hsp), y + 2, obj_enemiesbumpable))
	        y++
	
	    if (!place_meeting(x + sign(hsp), y, obj_enemiesbumpable))
	        x += sign(hsp)
	    else
		{
	        hsp = 0
			break
		}
	}

	if (vsp < 20) // gravity cap
	    vsp += grav
}
