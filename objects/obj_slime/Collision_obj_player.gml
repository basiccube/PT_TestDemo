with (obj_player)
{
    if (y < other.y && !attacking && (state == states.jump || state == states.highjump))
    {
        if (!other.bounce && keyJump.held && vsp > 0)
        {
            sound_play(sfx_superjump, true, soundtype.stereo)
            other.roam = false
            other.bounce = true
            other.image_index = 0
			other.alarm[0] = 150
			
            sprite_index = spr_player_Sjump
            image_index = 0
            jumpstop = true
            vsp = -11
            state = states.jump
        }
    }
	
	if attacking
		instance_destroy(other)
}


