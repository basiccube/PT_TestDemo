if (other.state != states.mach2 && other.state != states.door && other.state != states.freefall && other.state != states.barrelroll)
	player_hurt(id)

if ((obj_player.mach2 >= 35 || obj_player.state == states.freefall || obj_player.state == states.punch) && obj_player.state != states.barrelroll)
{
    instance_create(x, y, obj_100)
    global.collect += 100
    sound_play(sfx_enemyhit, false, soundtype.stereo)
    instance_destroy()
	
    with (obj_player)
    {
        state = states.punch
        machslideAnim = false
        image_index = 0
    }
}
if (obj_player.state == states.barrelroll)
{
    instance_create(x, y, obj_100)
    global.collect += 100
    sound_play(sfx_enemyhit, false, soundtype.stereo)
    instance_destroy()
}