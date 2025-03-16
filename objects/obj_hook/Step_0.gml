input_get()
if (hooked == 1 && drop == 0)
{
    obj_player.x = x
    obj_player.y = (y + 40)
    if keyJump.pressed
    {
        with (obj_player)
        {
            jumpAnim = false
            state = states.jump
            machslideAnim = false
            image_index = 0
            vsp = 1
        }
        hooked = 0
        drop = 1
    }
}
if (place_meeting(x, (y - 31), obj_hookend) && hooked == 1)
{
    drop = 1
    obj_player.state = states.mach2
    hooked = 0
    vsp = random_range(-4, 0)
    hsp = random_range(-4, 4)
}
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav
	
    x += hsp
    y += floor(vsp)
}

