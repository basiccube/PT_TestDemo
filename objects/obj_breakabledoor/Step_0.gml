if ((place_meeting((x + 5), y, obj_player) || place_meeting((x - 5), y, obj_player)) && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machhitAnim == 0)
    {
        obj_player.machhitAnim = 1
        obj_player.image_index = 0
    }
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_destroy()
    sound_play(sfx_break, false, soundtype.stereo)
}
if ((place_meeting((x + 5), y, obj_player) || place_meeting((x - 5), y, obj_player)) && (obj_player.state == states.barrelroll || obj_player.state == states.barrelslipnslide))
{
    instance_destroy()
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    sound_play(sfx_break, false, soundtype.stereo)
}
if (place_meeting(x, (y - 15), obj_player) && obj_player.state == states.freefall)
{
    instance_destroy()
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    instance_create((x + 16), (y + 50), obj_wooddebris)
    sound_play(sfx_break, false, soundtype.stereo)
}
if ((place_meeting((x - 1), y, obj_chasingmonster) || place_meeting((x + 1), y, obj_chasingmonster)))
{
    instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_create((x + 16), (y + 50), obj_wooddebris)
	instance_destroy()
	sound_play(sfx_break, false, soundtype.stereo)
}