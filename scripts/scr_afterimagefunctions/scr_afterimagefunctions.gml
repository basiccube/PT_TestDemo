///@param x
///@param y
///@param sprite
///@param index
function create_afterimage(_x, _y, _sprite, _index)
{
	var q = 
	{
		x: _x,
		y: _y,
		sprite_index: _sprite,
		image_index: _index,
		alarm: [15, 3, -1],
		image_blend: choose(make_colour_rgb(255, 0, 0), make_colour_rgb(0, 255, 0)),
		image_xscale: 1,
		identifier: afterimage.afterimage,
		visible: true,
		alpha: 1
	}

	ds_list_add(global.afterimage_list, q)
	return q;
}

///@param x
///@param y
///@param sprite
///@param index
function create_mach2effect(_x, _y, _sprite, _index)
{
	q = 
	{
		x: _x,
		y: _y,
		sprite_index: _sprite,
		image_index: _index,
		alarm: [5, -1, -1],
		image_blend: c_white,
		image_xscale: obj_player.xscale,
		visible: true,
		identifier: afterimage.mach2effect,
		alpha: 0.3
	}

	ds_list_add(global.afterimage_list, q)
	return q;
}