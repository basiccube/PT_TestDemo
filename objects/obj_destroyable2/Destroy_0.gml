for (var i = 0; i < image_xscale; i++)
{
    for (var j = 0; j < image_yscale; j++)
	{
		repeat (8)
			instance_create((x + 16 + (32 * i)), (y + 16 + (32 * j)), obj_debris)
		sound_play(sfx_break, false, soundtype.stereo)
		instance_create((x + (32 * i)), (y + (32 * j)), obj_collect)
	}
}
tile_destroy_multiple(32, "Tiles_1")

