function scr_player_keyget()
{
	input_get()
	hsp = 0
	if (image_index == 0)
	    audio_pause_all()
	image_speed = 0.35
	movespeed = 0
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false
	sound_play(sfx_keyobtained, true)
	sprite_index = spr_player_keyget
	if (floor(image_index) == (image_number - 1))
	{
	    audio_resume_all()
	    state = states.normal
	    image_index = 0
	}
	perform_collisions()
}
