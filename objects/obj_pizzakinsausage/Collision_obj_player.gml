if (global.sausagefollow == 0)
    sound_play(sfx_bigcollect, false, soundtype.stereo)
if (obj_player.state != states.hurt)
{
    global.sausagefollow = 1
    panic = 0
}

