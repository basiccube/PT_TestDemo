if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && key_down && state == states.crouch && place_meeting(x, (y + 1), obj_onewaywall))
        {
            sound_play(sfx_climbdown, true, soundtype.player)
            y += 5
            state = states.ladder
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}

