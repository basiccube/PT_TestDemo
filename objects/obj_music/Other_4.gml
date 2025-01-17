var roomMusic = ds_map_find_value(musicMap, room)
if !is_undefined(roomMusic)
{
	var previousMusic = music
	music = roomMusic.musicIndex
	
	if (music != previousMusic)
	{
		var previousID = musicID
		musicID = music_play(music)
		
		if roomMusic.continuous
			audio_sound_set_track_position(musicID, audio_sound_get_track_position(previousID))
		audio_stop_sound(previousID)
	}
}