with (obj_player)
{
    if (state != states.hurt && state != states.mach2 && state != states.door && state != states.freefall && state != states.barrelroll && state != states.bump && hurted == 0 && barrel == 0)
    {
        state = states.hurt
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_solid)))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
    else if (barrel == 1 && state != states.barrelroll)
    {
        barrel = 0
        state = states.hurt
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_solid)))
        {
            hurtbounce = 1
            vsp = -5
        }
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    }
}
if ((obj_player.mach2 >= 35 || obj_player.state == states.freefall || obj_player.state == states.punch) && obj_player.state != states.barrelroll)
{
    instance_create(x, y, obj_100)
    global.collect += 100
    sound_play(sfx_enemyhit, false, soundtype.stereo)
    instance_destroy()
    with (obj_player)
    {
        state = states.punch
        machslideAnim = true
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

