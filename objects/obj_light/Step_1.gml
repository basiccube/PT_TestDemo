with (all)
{
	if (object_index != obj_light && object_index != obj_googlyeyes && object_index != obj_scaryeyes)
	{
		if (distance_to_object(other) <= 255)
			image_blend = make_color_hsv(255, 0, 250 - distance_to_object(other))
	}
}