input_get()
image_speed = 0.35
if key_start
{
    if (!pause)
    {
        pause = 1
        instance_deactivate_all(true)
    }
    else
    {
        pause = 0
		selection = 0
        instance_activate_all()
    }
}
if (pause == 1)
{
    if (key_right2 && selection == 0)
		selection = 1
    if ((-key_left2) && selection == 1)
		selection = 0
    if (key_jump && selection == 0)
        game_restart()
    if (key_jump && selection == 1)
        game_end()
}