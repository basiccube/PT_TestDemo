///@param x
///@param y
///@param sprite
///@param animated
function create_debris(_x, _y, _sprite, _animated = false)
{
	var q = 
	{
		x: _x,
		y: _y,
		sprite_index: _sprite,
		
		image_number: sprite_get_number(_sprite),
		image_index: irandom(sprite_get_number(_sprite) - 1),
		image_angle: random_range(1, 270),
		image_speed: 0.35,
		
		sprW: sprite_get_width(_sprite),
		sprH: sprite_get_height(_sprite),
		
		hsp: random_range(-4, 4),
		vsp: random_range(-4, 0),
		alpha: 1,
		grav: 0.4,
		
		type: debristype.normal,
		animated: _animated,
		destroyOnAnim: false,
		rotate: false,
	}

	ds_list_add(global.debris_list, q)
	return q;
}