if (other.hsp != 0 && !(vsp < 0) && grounded)
{
    instance_create(x, y, obj_bumpeffect)
    alarm[0] = 200
    ministun = 0
    stun = 1
    hsp = (sign((x - other.x)) * 6)
    if (x != other.x)
        image_xscale = (-(sign((x - other.x))))
    vsp = -4
}
else if (stun == 1 && vsp == 0 && other.hsp != 0)
{
    instance_destroy()
    with (instance_create(x, y, obj_pepgoblindead))
    {
        if (other.stun == 0)
            image_xscale = other.image_xscale
        else
            image_xscale = other.image_xscale
        instance_create(x, y, obj_bangeffect)
        if (x != other.x)
            hsp = (sign((x - obj_player.x)) * 15)
        vsp = -10
    }
    sound_play(sfx_enemyhit, false, soundtype.stereo)
}

