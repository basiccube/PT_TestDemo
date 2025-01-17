with (obj_player)
{
    if (state != states.hurt && !hurted && state != states.bump)
    {
        instance_create(x, y, obj_spikehurteffect)
		sound_play(sfx_hurt, true, soundtype.player)
        state = states.hurt
        image_index = 0
        flash = true
		
        if (x != other.x)
        {
            xscale = -sign(x - other.x)
            hsp = sign(x - other.x) * 5
        }
        else
            hsp = -xscale * 5
		
        if !grounded
        {
            hurtbounce = 1
            vsp = -5
        }
    }
}

