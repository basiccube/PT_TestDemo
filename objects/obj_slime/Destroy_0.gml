sound_play(sfx_enemyhit, false, soundtype.stereo)
instance_create(x, y, obj_slimedead)
repeat (10)
	create_debris(x + 16, y, spr_slimedebris)

with (obj_player)
{
	alarm[9] = 100
	combo += 1
	
	if (combo == 1)
	{
		instance_create(other.x, other.y, obj_10)
		global.collect += 10
	}
	else if (combo == 2)
	{
		instance_create(other.x, other.y, obj_20)
		global.collect += 20
	}
	else if (combo == 3)
	{
		instance_create(other.x, other.y, obj_40)
		global.collect += 40
	}
	else if (combo >= 4)
	{
		instance_create(other.x, other.y, obj_80)
		global.collect += 80
	}
}