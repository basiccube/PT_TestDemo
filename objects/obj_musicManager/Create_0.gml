musicID = -4
music = -4
musicMap = ds_map_create()

function music_add(roomName, musicIndex, continuous)
{
	var musicStruct =
	{
		musicIndex : musicIndex,
		continuous : continuous,
	}
	
	ds_map_add(musicMap, roomName, musicStruct)
}

music_add(rm_hubroom, mu_hub, false)
music_add(rm_tower_1, mu_tower, false)
music_add(rm_towerchallenge_1, mu_tower, false)
music_add(rm_water_1, mu_water, false)
music_add(rm_cave_1, mu_cave, false)
music_add(rm_factory_1, mu_factory, false)
music_add(rm_factory_4, mu_factory, false)
music_add(rm_factory_5, mu_factorychase, false)
music_add(rm_factory_6, mu_factory, false)