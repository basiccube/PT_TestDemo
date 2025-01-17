///@param hsp
///@param vsp
function player_bump(_hsp = -2.5, _vsp = -3)
{
	movespeed = 0
	state = states.bump
	hsp = _hsp * xscale
	vsp = _vsp
	mach2 = 0
		
	image_index = 0
	machslideAnim = true
	machhitAnim = false
	instance_create(x + (10 * xscale), y + 10, obj_bumpeffect)
	sound_play(sfx_bump, true, soundtype.stereo)
}