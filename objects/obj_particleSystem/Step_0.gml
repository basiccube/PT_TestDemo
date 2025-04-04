if !ds_list_empty(global.debris_list)
{
	for (var i = 0; i < ds_list_size(global.debris_list); i++)
	{
		var q = ds_list_find_value(global.debris_list, i)
		if is_struct(q)
		{
			with (q)
			{
				if (vsp < 20)
					vsp += grav
				
				if (type == debristype.fade)
				{
					vsp = 0
					alpha -= 0.05
				}
				
				x += hsp
				y += vsp
				
				var _destroy = false
				if animated
				{
					image_index += image_speed
					if (image_index > image_number - 1)
					{
						image_index = frac(image_index)
						if destroyOnAnim
							_destroy = true
					}
				}
				if rotate
					image_angle += 2
				
				var outofx = (x > room_width + sprW || x < -sprW)
				var outofy = (y > room_height + sprH || y < -sprH)
				if (outofx || outofy || (type == debristype.fade && alpha <= 0))
					_destroy = true
				
				if _destroy
				{
					ds_list_delete(global.debris_list, i)
					i--
					q = undefined
				}
			}
		}
	}
}