image_speed = 0.35
if !grounded
{
    hsp = 0
    roam = 0
}
if (roam == 1 && bounce == 0)
{
    if grounded
        hsp = (image_xscale * movespeed)
    sprite_index = spr_slimemove
	
	if check_solid(x + image_xscale, y)
		image_xscale *= -1
    if !(check_solid(x + (15 * image_xscale), y + 8) || place_meeting(x + (15 * image_xscale), y + 8, obj_platform))
        image_xscale *= -1
}
if (roam == 0 && bounce == 0)
{
    hsp = 0
    sprite_index = spr_slimeidle
}
if (bounce == 1)
{
    hsp = 0
    sprite_index = spr_slimebounce
    if (floor(image_index) == image_number - 1)
        bounce = 0
}
if (stun == 1)
    sprite_index = spr_slimeidle
perform_collisions()

