if (global.tomatofollow == 0)
    sound_play(sfx_bigcollect, false, soundtype.stereo)
if (obj_player.state != states.hurt)
{
    global.tomatofollow = 1
    panic = 0
}

