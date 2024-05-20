function scr_player_hang()
{
	input_get()
	hsp = 0
	vsp = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false
	start_running = 1
	alarm[4] = 14
	image_speed = 0.35
	perform_collisions()
}
