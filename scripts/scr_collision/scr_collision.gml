function perform_collisions(flags = collisionflags.none)
{
	grounded = false
	
	repeat abs(vsp)
	{
	    if !check_solid(x, y + sign(vsp), flags)
	        y += sign(vsp)
	    else
		{
	        vsp = 0
			break
		}
	}
	
	repeat abs(hsp)
	{
	    if (check_solid(x + sign(hsp), y, flags) && !check_solid(x + sign(hsp), y - 1, flags))
			y--
	
	    if (!check_solid(x + sign(hsp), y, flags) && !check_solid(x + sign(hsp), y + 1, flags) && check_solid(x + sign(hsp), y + 2, flags))
	        y++
	
	    if !check_solid(x + sign(hsp), y, flags)
	        x += sign(hsp)
	    else
		{
	        hsp = 0
			break
		}
	}

	if (vsp < 14)
	    vsp += grav
	
	grounded |= check_solid(x, y + 1, flags)
	grounded |= (flags != collisionflags.ignoreplatforms && !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform))
}

function perform_collisions_player(flags = collisionflags.none)
{
	grounded = false
	
	repeat abs(vsp)
	{
	    if !check_solid_player(x, y + sign(vsp), flags)
	        y += sign(vsp)
	    else
		{
	        vsp = 0
			break
		}
	}
	
	repeat abs(hsp)
	{
	    if (check_solid_player(x + sign(hsp), y, flags) && !check_solid_player(x + sign(hsp), y - 1, flags))
			y--
	
	    if (!check_solid_player(x + sign(hsp), y, flags) && !check_solid_player(x + sign(hsp), y + 1, flags) && check_solid_player(x + sign(hsp), y + 2, flags))
	        y++
	
	    if !check_solid_player(x + sign(hsp), y, flags)
	        x += sign(hsp)
	    else
		{
	        hsp = 0
			break
		}
	}

	if (vsp < 14)
	    vsp += grav
	
	grounded |= check_solid_player(x, y + 1, flags)
	grounded |= (flags != collisionflags.ignoreplatforms && !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform))
}

///@param x
///@param y
///@param flags
function check_solid(_x, _y, _flags = collisionflags.none)
{
	var oldX = x
	var oldY = y
	x = _x
	y = _y
	
	if place_meeting(x, y, obj_solid)
	{
		x = oldX
		y = oldY
		return true;
	}
	
	if (_flags != collisionflags.ignoreplatforms && y > oldY && (bbox_bottom % 16) == 0 && !place_meeting(x, oldY, obj_platform) && place_meeting(x, y, obj_platform))
	{
		x = oldX
		y = oldY
		return true;
	}
	
	var slope = instance_place(x, y, obj_slope)
	if (slope)
	{
		with (slope)
		{
			var objectSide = 0
			var slopeStart = 0
			var slopeEnd = 0
			
			if (image_xscale > 0)
			{
				objectSide = other.bbox_right
				slopeStart = bbox_bottom
				slopeEnd = bbox_top
			}
			else
			{
				objectSide = other.bbox_left
				slopeStart = bbox_top
				slopeEnd = bbox_bottom
			}
			
			var m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left)
			slope = slopeStart - round(m * (objectSide - bbox_left))
			if (other.bbox_bottom >= slope)
			{
				other.x = oldX
				other.y = oldY
				return true;
			}
		}
	}
	
	x = oldX
	y = oldY
	return false;
}

///@param x
///@param y
function check_solid_player(_x, _y, _flags = collisionflags.none)
{
	var oldX = x
	var oldY = y
	x = _x
	y = _y
	
	if place_meeting(x, y, obj_solid)
	{
		x = oldX
		y = oldY
		return true;
	}
	
	if (_flags != collisionflags.ignoreplatforms && y > oldY && (bbox_bottom % 16) == 0 && !place_meeting(x, oldY, obj_platform) && place_meeting(x, y, obj_platform))
	{
		x = oldX
		y = oldY
		return true;
	}
	if (_flags != collisionflags.ignoreplatforms && y > oldY && (bbox_bottom % 16) == 0 && !place_meeting(x, oldY, obj_water) && place_meeting(x, y, obj_water) && state == states.mach2)
	{
		x = oldX
		y = oldY
		return true;
	}
	
	var slope = instance_place(x, y, obj_slope)
	if (slope)
	{
		with (slope)
		{
			var objectSide = 0
			var slopeStart = 0
			var slopeEnd = 0
			
			if (image_xscale > 0)
			{
				objectSide = other.bbox_right
				slopeStart = bbox_bottom
				slopeEnd = bbox_top
			}
			else
			{
				objectSide = other.bbox_left
				slopeStart = bbox_top
				slopeEnd = bbox_bottom
			}
			
			var m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left)
			slope = slopeStart - round(m * (objectSide - bbox_left))
			if (other.bbox_bottom >= slope)
			{
				other.x = oldX
				other.y = oldY
				return true;
			}
		}
	}
	
	x = oldX
	y = oldY
	return false;
}