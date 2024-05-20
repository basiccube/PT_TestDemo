var target;
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(obj_player))
{
    target = obj_player
	var vieww = camera_get_view_width(view_camera[0])
	var viewh = camera_get_view_height(view_camera[0])
	camx = target.x - (vieww / 2)
	camx = clamp(camx, 0, (room_width - vieww))
	camy = target.y - (viewh / 2)
	camy = clamp(camy, 0, (room_height - viewh))
	if (shake_mag != 0)
	{
		camx = target.x - (vieww / 2) + irandom_range((-shake_mag), shake_mag)
		camx = clamp(camx, 0 + irandom_range((-shake_mag), shake_mag), (room_width - vieww) + irandom_range((-shake_mag), shake_mag))
		camy = target.y - (viewh / 2) + irandom_range((-shake_mag), shake_mag)
		camy = clamp(camy, 0 + irandom_range((-shake_mag), shake_mag), (room_height - viewh) + irandom_range((-shake_mag), shake_mag))
	}
	audio_listener_position(camx + (vieww / 2), camy + (viewh / 2), 0)
	camera_set_view_pos(view_camera[0], camx, camy)
}

