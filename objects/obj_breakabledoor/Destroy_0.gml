repeat (8)
{
	with (create_debris(x + (sprite_width / 2), y + (sprite_height / 2), spr_wooddebris))
	{
		hsp = random_range(-4, 4)
		vsp = random_range(-8, -6)
		rotate = true
	}
}
sound_play(sfx_break, false, soundtype.stereo)