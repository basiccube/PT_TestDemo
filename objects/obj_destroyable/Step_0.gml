if ((place_meeting((x + 1), y, obj_player) || place_meeting(x, (y + 1), obj_player)) && obj_player.xscale == -1 && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machhitAnim == 0)
    {
        with (obj_player)
        {
            machhitAnim = 1
            image_index = 0
        }
    }
    instance_destroy()
}
if ((place_meeting((x - 1), y, obj_player) || place_meeting(x, (y + 1), obj_player)) && obj_player.xscale == 1 && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machhitAnim == 0)
    {
        with (obj_player)
        {
            machhitAnim = 1
            image_index = 0
        }
    }
    instance_destroy()
}
if ((place_meeting((x - 1), y, obj_chasingmonster) || place_meeting((x + 1), y, obj_chasingmonster)))
    instance_destroy()
if ((place_meeting((x + 5), y, obj_player) || place_meeting((x - 5), y, obj_player)) && (obj_player.state == states.barrelroll || obj_player.state == states.barrelslipnslide || obj_player.state == states.slipnslide))
    instance_destroy()
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && obj_player.state == states.freefall)
    instance_destroy()
if (place_meeting(x, (y - 8), obj_player) && obj_player.vsp > 0 && obj_player.state == states.freefall)
    instance_destroy()
if (place_meeting(x, (y - 16), obj_player) && obj_player.vsp > 0 && obj_player.state == states.freefall)
    instance_destroy()
if (place_meeting(x, (y - 20), obj_player) && obj_player.vsp > 0 && obj_player.state == states.freefall)
    instance_destroy()

if place_meeting(x, y + 1, obj_player)
{
    with (obj_player)
    {
        if (keyJump.pressed && state == states.crouch)
        {
            instance_destroy(other.id)
            vsp = 0
            jumpstop = true
        }
    }
}
if (place_meeting(x, y + 1, obj_player) && obj_player.vsp <= 0.5)
{
    with (obj_player)
    {
        if !grounded
        {
            instance_destroy(other.id)
            vsp = 0
            jumpstop = true
        }
    }
}

