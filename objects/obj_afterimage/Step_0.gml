for (var i = 0; i < ds_list_size(global.afterimage_list); i++)
{
	var b = ds_list_find_value(global.afterimage_list, i)
	with (b)
	{
		for (var l = 0; l < array_length(alarm); l++)
		{
			if (alarm[l] >= 0)
				alarm[l]--
		}
		switch identifier
		{
			case afterimage.mach2effect:
				if (obj_player.state != states.mach2 && obj_player.state != states.barrelroll)
					alarm[0] = 0
				visible = obj_player.visible
				break
		}

		if (alarm[1] == 0)
		{
			other.alpha[identifier] = 0
			alarm[2] = 3
		}
		if (alarm[2] == 0)
		{
			other.alpha[identifier] = 1
			alarm[1] = 3
		}
		if (alarm[0] == 0)
		{
			b = undefined
			ds_list_delete(global.afterimage_list, i)
			i--
		}
	}
}