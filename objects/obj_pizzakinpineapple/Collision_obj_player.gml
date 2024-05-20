if (global.pineapplefollow == 0)
    sound_play(sfx_bigcollect, false, soundtype.stereo)
if (obj_player.state != states.hurt)
{
    global.pineapplefollow = 1
    panic = 0
}

