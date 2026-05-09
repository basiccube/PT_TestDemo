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
	machslideAnim = false
	machhitAnim = false
	instance_create(x + (10 * xscale), y + 10, obj_bumpeffect)
	sound_play(sfx_bump, true, soundtype.stereo)
}

///@param hurtID
function player_hurt(_hurtID)
{
	with (obj_player)
	{
	    if (state != states.hurt && state != states.bump && !hurted)
	    {
	        instance_create(x, y, obj_spikehurteffect)
			sound_play(sfx_hurt, true, soundtype.player)
	        state = states.hurt
	        image_index = 0
	        flash = true
			
	        if (x != _hurtID.x)
	            hsp = sign(x - _hurtID.x) * 5
	        else
	            hsp = 5
			
	        if !grounded
	        {
	            hurtbounce = 1
	            vsp = -5
	        }
			
			if barrel
			{
				repeat (10)
				{
					with (create_debris(x + random_range(-15, 15), y + random_range(-15, 15), spr_wooddebris))
					{
						hsp = random_range(-4, 4)
						vsp = random_range(-8, -6)
						rotate = true
					}
				}
			}
	    }
	}
}