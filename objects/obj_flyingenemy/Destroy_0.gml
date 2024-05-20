obj_player.alarm[9] = 100
obj_player.combo += 1
if (obj_player.combo == 1)
{
	instance_create(x, y, obj_10)
	global.collect += 10
}
if (obj_player.combo == 2)
{
	instance_create(x, y, obj_20)
	global.collect += 20
}
if (obj_player.combo == 3)
{
	instance_create(x, y, obj_40)
	global.collect += 40
}
if (obj_player.combo >= 4)
{
	instance_create(x, y, obj_80)
	global.collect += 80
}