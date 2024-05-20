if (obj_player.y < y && obj_player.state != states.hurt && obj_player.attacking == 0)
{
    if (obj_player.key_jump2 && obj_player.y < y && obj_player.vsp > 0)
    {
        bounce = 1
        image_index = 0
        sound_play(sfx_superjump, true, soundtype.stereo)
        if (!obj_player.key_up)
            obj_player.vsp = -11
        if obj_player.key_up
        {
            obj_player.state = states.highjump
            obj_player.vsp = -14
        }
        instance_create(obj_player.x, (obj_player.y + 40), obj_stompeffect)
    }
    else
    {
        obj_player.vsp = -5.5
        bounce = 1
        image_index = 0
        sound_play(sfx_superjump, true, soundtype.stereo)
    }
}
if (obj_player.mach2 >= 35 || obj_player.attacking == 1)
{
    instance_destroy()
    obj_player.vsp = -6
    instance_create(x, y, obj_bangeffect)
    with (instance_create(x, y, obj_flyingenemydead))
    {
        hsp = (sign((x - obj_player.x)) * 15)
        image_xscale = (-(sign((x - obj_player.x))))
        vsp = -10
    }
    sound_play(sfx_enemyhit, false, soundtype.stereo)
}

