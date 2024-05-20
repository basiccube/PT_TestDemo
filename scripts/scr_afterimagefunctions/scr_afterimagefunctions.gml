/// @params x
/// @params y
/// @params sprite_index
/// @params image_index
function create_afterimage(argument0, argument1, argument2, argument3)
{
	var q = 
	{
		x: argument0,
		y: argument1,
		sprite_index: argument2,
		image_index: argument3,
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

/// @params x
/// @params y
/// @params sprite_index
/// @params image_index
function create_mach2effect(argument0, argument1, argument2, argument3)
{
	q = 
	{
		x: argument0,
		y: argument1,
		sprite_index: argument2,
		image_index: argument3,
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