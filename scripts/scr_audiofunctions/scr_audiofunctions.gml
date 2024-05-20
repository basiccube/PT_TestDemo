function sound_play(sound, unique = false, type = soundtype.normal, pitch = false)
{
	if (unique && audio_is_playing(sound))
		exit;
	var snd_id;
	switch type
	{
		case soundtype.normal:
			snd_id = audio_play_sound(sound, 1, false)
			break
		case soundtype.stereo:
			snd_id = audio_play_sound_at(sound, x, y, 0, 200, 900, 1, false, 1)
			break
		case soundtype.player:
			snd_id = audio_play_sound_on(obj_player.playeremitter, sound, false, 1)
			break
	}
	if (pitch)
		audio_sound_pitch(snd_id, random_range(0.925, 1.075))
	audio_sound_gain(snd_id, 0.6, 0)
}

function music_play()
{
	var snd = argument[irandom((argument_count - 1))]
	global.music = audio_play_sound(snd, 10, true)
	audio_sound_gain(global.music, 0.6, 1)
	return global.music;
}