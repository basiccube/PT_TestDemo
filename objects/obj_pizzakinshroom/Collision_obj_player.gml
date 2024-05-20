if (global.shroomfollow == 0)
    sound_play(sfx_bigcollect, false, soundtype.stereo)
if (obj_player.state != states.hurt)
{
    global.shroomfollow = 1
    panic = 0
}

