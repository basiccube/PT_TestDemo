if (stun == 0 && obj_player.attacking == 0 && obj_player.barrel == 0 && obj_player.state != states.tackle && obj_player.state != states.hurt && obj_player.state != states.bump && (!(vsp < 0)) && obj_player.instakillmove == 0)
{
    obj_player.image_index = 0
    obj_player.state = states.bump
    if (x != other.x)
    {
        obj_player.xscale = (-(sign((obj_player.x - x))))
        hsp = (sign((x - obj_player.x)) * 3)
        image_xscale = (-(sign((x - obj_player.x))))
        obj_player.hsp = (sign((other.x - x)) * 3)
    }
    else
    {
        obj_player.xscale = 1
        obj_player.hsp = -3
        image_xscale = 1
        hsp = 6
    }
    obj_player.vsp = -3
    vsp = -3
    if (alarm[0] < 50)
        alarm[0] += 50
    if (stun == 0)
    {
        ministun = 1
        image_index = 0
    }
    sound_play(sfx_superjump, true, soundtype.stereo)
}
if (obj_player.y < y && obj_player.state != states.hurt && obj_player.attacking == 0 && obj_player.barrel == 0 && obj_player.state != states.bump && (!(vsp < 0)) && obj_player.instakillmove == 0)
{
    if (x != other.x)
    {
        hsp = (sign((x - obj_player.x)) * 3)
        image_xscale = (-(sign((x - obj_player.x))))
    }
    else
    {
        obj_player.xscale = 1
        obj_player.hsp = -3
        image_xscale = 1
        hsp = 6
    }
    if (obj_player.key_jump2 && obj_player.y < y && obj_player.vsp > 0)
    {
        if (!obj_player.key_up)
            obj_player.vsp = -11
        if obj_player.key_up
        {
            obj_player.state = states.highjump
            obj_player.vsp = -14
        }
        instance_create(obj_player.x, (obj_player.y + 40), obj_stompeffect)
    }
    else if (obj_player.state != states.bump)
    {
        obj_player.image_index = 0
        obj_player.state = states.bump
        if (x != other.x)
            obj_player.xscale = (-(sign((obj_player.x - x))))
        obj_player.hsp = (sign((other.x - x)) * 3)
        obj_player.vsp = -3
    }
    if (alarm[0] < 50)
        alarm[0] += 50
    vsp = -3
    if (stun == 0)
    {
        ministun = 1
        image_index = 0
    }
    sound_play(sfx_superjump, true, soundtype.stereo)
}
if (obj_player.attacking == 1)
{
	if (obj_player.barrel == 0)
	{
		obj_player.state = states.punch
		obj_player.image_index = 0
	}
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
if (obj_player.instakillmove == 1)
{
    instance_destroy()
    instance_create(x, y, obj_explosioneffect)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    sound_play(sfx_enemyhit, false, soundtype.stereo)
}