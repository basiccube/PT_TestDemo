if (place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall))
    instance_destroy()
if (vsp < 12)
    vsp += grav
if (place_meeting((x - 5), y, obj_player) && obj_player.xscale == 1 && (obj_player.state == states.mach1 || obj_player.state == states.mach2) && rolling == 0)
{
    rolling = 1
    hsp = 7
    obj_player.state = states.tackle
    obj_player.image_index = 0
    obj_player.mach2 = 0
    sound_play(sfx_bump, true, soundtype.stereo)
}
if (place_meeting((x + 5), y, obj_player) && obj_player.xscale == -1 && (obj_player.state == states.mach1 || obj_player.state == states.mach2) && rolling == 0)
{
    rolling = 1
    hsp = -7
    obj_player.state = states.tackle
    obj_player.image_index = 0
    obj_player.mach2 = 0
    sound_play(sfx_bump, true, soundtype.stereo)
}
perform_solid_collisions()

