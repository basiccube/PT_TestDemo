with (obj_player)
{
	if (place_meeting(x + xscale, y, other) && mach2 >= 35 && attacking)
	{
		if !machhitAnim
		{
		    machhitAnim = true
		    image_index = 0
		}
		instance_destroy(other)
	}
	if (place_meeting(x + (xscale * 5), y, other) && (state == states.slipnslide || sprite_index == spr_player_barrelslipnslide || sprite_index == spr_player_barrelroll))
		instance_destroy(other)
	
	if (state == states.freefall && vsp > 0)
	{
		var freefallValues = [1, 8, 16, 20]
		for (var i = 0; i < array_length(freefallValues); i++)
		{
			if place_meeting(x, y + freefallValues[i], other)
				instance_destroy(other)
		}
	}
	
	if place_meeting(x, y - 1, other)
	{
		if ((state == states.crouch && keyJump.pressed) || (vsp <= 0.5 && !grounded))
		{
			instance_destroy(other)
			vsp = 0
			jumpstop = true
		}
	}
}

with (obj_chasingmonster)
{
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other)
}