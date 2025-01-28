if (crushing == 1)
{
    alarm[0] = 15
    vspeed = 8
    if check_solid(x, y + 1)
    {
        vspeed = 0
        crushing = 0
    }
}
if (backup == 1)
{
    vspeed = -8
    if check_solid(x, y - 1)
    {
        vspeed = 0
        backup = 0
    }
}
if (place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player))
	player_hurt(id)

