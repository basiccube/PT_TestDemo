if (vsp < 30)
    vsp += grav
image_speed = 0.35

if (stun == 0 && ministun == 0 && hitbox == 0)
{
    with (instance_create(x, y, obj_forkhitbox))
        mycreator = other.id
    hitbox = 1
}

if (stun == 0 && ministun == 0)
{
    hsp = (image_xscale * movespeed)
    sprite_index = spr_forknight
	
	if check_solid(x + image_xscale, y)
		image_xscale *= -1
    if !(check_solid(x + (15 * image_xscale), y + 8) || place_meeting(x + (15 * image_xscale), y + 8, obj_platform))
        image_xscale *= -1
}

if (stun == 1)
{
    hitbox = 0
	if check_solid(x + image_xscale, y)
	{
		hsp *= -1
		image_xscale *= -1
	}
	
    sprite_index = spr_forknightstun
    if (grounded && vsp > 0)
        hsp = 0
}

if (ministun == 1)
{
    hitbox = 0
	if check_solid(x + image_xscale, y)
	{
		hsp *= -1
		image_xscale *= -1
	}
	
    sprite_index = spr_forknightstun
    image_index = 0
    image_speed = 0
    if (grounded && vsp > 0)
        hsp = 0
}
else
    image_speed = 0.35

perform_collisions()

