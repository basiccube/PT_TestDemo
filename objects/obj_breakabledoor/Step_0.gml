with (obj_player)
{
	if place_meeting(x + (xscale * 5), y, other)
	{
		if (mach2 >= 35 && attacking)
		{
			if !machhitAnim
		    {
		        machhitAnim = true
		        image_index = 0
		    }
		    instance_destroy(other)
		}
		else if (sprite_index == spr_player_barrelslipnslide || sprite_index == spr_player_barrelroll)
			instance_destroy(other)
	}
	
	if (place_meeting(x, y + 15, other) && state == states.freefall)
		instance_destroy(other)
}

with (obj_chasingmonster)
{
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other)
}