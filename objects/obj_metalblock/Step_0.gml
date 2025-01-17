if (place_meeting(x, y - 15, obj_player) && obj_player.state == states.freefall)
    instance_destroy()

// High Quality™ coding right here.
with (obj_boulder)
{
	if place_meeting(x + hsp, y, other)
		instance_destroy(other.id)
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other.id)
	if place_meeting(x + hsp, y + vsp, other)
		instance_destroy(other.id)
	if place_meeting(x + sign(hsp), y + sign(vsp), other)
		instance_destroy(other.id)
}

with (obj_chasingmonster)
{
	var hit = false
	if place_meeting(x + 1, y, other)
		instance_destroy(other.id)
	if place_meeting(x - 1, y, other)
		instance_destroy(other.id)
	if place_meeting(x, y - 1, other)
		instance_destroy(other.id)
	if place_meeting(x, y + 1, other)
		instance_destroy(other.id)
	if place_meeting(x + hsp, y, other)
	{
		hit = true
		instance_destroy(other.id)
	}
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other.id)
	if place_meeting(x + hsp, y + vsp, other)
	{
		hit = true
		instance_destroy(other.id)
	}
	if place_meeting(x + sign(hsp), y + sign(vsp), other)
		instance_destroy(other.id)
		
	if hit
	{
		attack = true
		alarm[1] = 50
		attacked = true
		hsp = 0
	}
}
with (obj_chasingmonsterdark)
{
	var hit = false
	if place_meeting(x + 1, y, other)
		instance_destroy(other.id)
	if place_meeting(x - 1, y, other)
		instance_destroy(other.id)
	if place_meeting(x, y - 1, other)
		instance_destroy(other.id)
	if place_meeting(x, y + 1, other)
		instance_destroy(other.id)
	if place_meeting(x + hsp, y, other)
	{
		hit = true
		instance_destroy(other.id)
	}
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other.id)
	if place_meeting(x + hsp, y + vsp, other)
	{
		hit = true
		instance_destroy(other.id)
	}
	if place_meeting(x + sign(hsp), y + sign(vsp), other)
		instance_destroy(other.id)
		
	if hit
	{
		attack = true
		alarm[1] = 50
		attacked = true
		hsp = 0
	}
}