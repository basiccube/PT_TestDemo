input_get()
image_speed = 0.35

if keyStart.pressed
{
    if !pause
    {
        pause = true
        instance_deactivate_all(true)
    }
    else
    {
        pause = false
		selection = 0
        instance_activate_all()
    }
}

if pause
{
	move = (keyLeft.pressed + keyRight.pressed)
	if (move != 0)
		selection += move
	selection = clamp(selection, 0, 1)
	
	if keyJump.pressed
	{
		if (selection == 0)
			game_restart()
		else if (selection == 1)
			game_end()
	}
}