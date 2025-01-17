image_speed = 0.35
if (bump == 0)
{
    if (charging == 1 && place_meeting(x - 64, y + 1, obj_solid))
        hsp = -1.5
    else if place_meeting(x + 64, y + 1, obj_solid)
        hsp = 0
}
if (falling == 1)
{
    vsp = 10
    if grounded
        instance_destroy()
}
if place_meeting((x - 1), y, obj_player)
{
    if (obj_player.mach2 >= 35 || obj_player.state == states.freefall || obj_player.state == states.punch || obj_player.state == states.barrelroll)
    {
        obj_player.state = states.tackle
        obj_player.image_index = 0
        hsp = 10
        bump = 1
        alarm[0] = 25
    }
}

with (obj_boulder)
{
	if place_meeting(x + hsp, y, other)
		instance_destroy(other.id)
	if place_meeting(x + sign(hsp), y, other)
		instance_destroy(other.id)
}

perform_collisions()

