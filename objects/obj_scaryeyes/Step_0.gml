if instance_exists(obj_chasingmonster)
{
    x = obj_chasingmonster.x
    y = obj_chasingmonster.y
    image_xscale = obj_chasingmonster.image_xscale
	if instance_exists(obj_light)
	{
		if (color_get_value(obj_chasingmonster.image_blend) > 5)
		{
			if (image_alpha > 0)
				image_alpha -= 0.2
		}
		else
		{
			if (image_alpha < 1)
				image_alpha += 0.2
		}
	}
}

