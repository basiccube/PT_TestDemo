with (obj_player)
{
	if place_meeting(x, y, obj_secretwall)
	{
		if (other.image_alpha > 0.4)
			other.image_alpha -= 0.1
	}
	else
	{
		if (other.image_alpha < 1)
			other.image_alpha += 0.1
	}
}