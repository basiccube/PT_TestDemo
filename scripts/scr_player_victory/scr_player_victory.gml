function scr_player_victory()
{
	hsp = 0
	mach2 = 0
	jumpAnim = true
	landAnim = false
	machslideAnim = true
	crouchAnim = true
	machhitAnim = false
	
	sprite_index = spr_player_victory
	if (floor(image_index) == image_number - 1)
	    image_speed = 0
	else
	    image_speed = 0.35
}
