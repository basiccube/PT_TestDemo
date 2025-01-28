with (obj_player)
{
    if (state == states.mach1 || state == states.mach2 || state == states.machslide || state == states.slipnslide)
    {
        state = states.slipnslide
        if (movespeed < 8)
            movespeed = 8
    }
    else if (sprite_index == spr_player_barrelmach)
    {
		other.drop = true
		sprite_index = spr_player_barrelslipnslide
        image_index = 0
		state = states.barrelroll
        
        if (movespeed < 8)
            movespeed = 8
    }
}

