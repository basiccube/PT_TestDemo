if (vsp < 12)
    vsp += grav
image_speed = 0.35
if place_meeting(x, y, obj_water2)
    vsp = 0
if (attack == 0)
{
    movespeed = 2
    hsp = (image_xscale * movespeed)
    if check_solid(x + image_xscale, y)
        image_xscale *= -1
    sprite_index = spr_piraneapple
}
if (attack == 1)
{
    hsp = 0
    sprite_index = spr_piraneappleattack
}
perform_collisions()

