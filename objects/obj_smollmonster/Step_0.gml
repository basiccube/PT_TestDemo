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

if (roam == 1 && attack == 0)
{
    hsp = (image_xscale * 2)
    if (place_meeting((x + 1), y, obj_solid) && image_xscale == 1)
        image_xscale = -1
    if (place_meeting((x - 1), y, obj_solid) && image_xscale == -1)
        image_xscale = 1
    if (place_meeting((x + hsp), y, obj_enemylimit))
        image_xscale *= -1
}
if (roam == 0 && attack == 0)
{
    if (!((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))))
        hsp = (image_xscale * 6)
    else
        attack = 1
    if (place_meeting((x + 1), y, obj_solid) && image_xscale == 1)
        image_xscale = -1
    if (place_meeting((x - 1), y, obj_solid) && image_xscale == -1)
        image_xscale = 1
    if (place_meeting((x + hsp), y, obj_enemylimit))
        image_xscale *= -1
}
if (roam == 0 && attack == 1 && attacked == 0)
{
    alarm[1] = 80
    attacked = 1
    hsp = 0
}
perform_collisions(collisionflags.ignoreplatforms)

