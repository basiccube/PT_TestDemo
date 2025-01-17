if (shake_mag > 0)
{
	shake_mag -= shake_mag_acc
	if (shake_mag < 0)
		shake_mag = 0
}

if instance_exists(obj_player)
{
	var target = obj_player
	var viewWidth = camera_get_view_width(view_camera[0])
	var viewHeight = camera_get_view_height(view_camera[0])
	
	camX = clamp(target.x - (viewWidth / 2), 0, room_width - viewWidth)
	camY = clamp(target.y - (viewHeight / 2), 0, room_height - viewHeight)
	if (shake_mag != 0)
	{
		camX += irandom_range(-shake_mag, shake_mag)
		camX = clamp(camX, 0 + irandom_range(-shake_mag, shake_mag), room_width - viewWidth + irandom_range(-shake_mag, shake_mag))
		camY += irandom_range(-shake_mag, shake_mag)
		camY = clamp(camY, 0 + irandom_range(-shake_mag, shake_mag), room_height - viewHeight + irandom_range(-shake_mag, shake_mag))
	}
	
	audio_listener_position(camX + (viewWidth / 2), camY + (viewHeight / 2), 0)
	camera_set_view_pos(view_camera[0], camX, camY)
}

