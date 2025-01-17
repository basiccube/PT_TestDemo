///@param x
///@param y
///@param tilemap_id
function tile_destroy(_x, _y, _tilemap_id)
{
	var data = tilemap_get_at_pixel(_tilemap_id, _x, _y)
	data = tile_set_empty(data)
	tilemap_set_at_pixel(_tilemap_id, data, _x, _y)
}

///@param tile_size
///@param layer_id
function tile_destroy_multiple(_tile_size, _layer_id)
{
	var lay_id = layer_get_id(_layer_id)
	if (lay_id != -1)
	{
		var map_id = layer_tilemap_get_id(lay_id)
		var w = abs(sprite_width) / _tile_size
		var h = abs(sprite_height) / _tile_size
		var ix = sign(image_xscale)
		var iy = sign(image_yscale)
		if (ix < 0)
			w++
		
		for (var yy = 0; yy < h; yy++)
		{
			for (var xx = 0; xx < w; xx++)
				tile_destroy(x + ((xx * _tile_size) * ix), y + ((yy * _tile_size) * iy), map_id)
		}
	}
}