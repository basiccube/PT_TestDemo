with (obj_player)
{
    if (y < other.y && attacking == 0 && (state == states.jump || state == states.highjump))
    {
        if (other.bounce == 0 && keyJump.held && vsp > 0)
        {
            sound_play(sfx_superjump, true, soundtype.stereo)
            other.roam = 0
            other.bounce = 1
            other.image_index = 0
			other.alarm[0] = 150
			
            sprite_index = spr_player_Sjump
            image_index = 0
            jumpstop = true
            vsp = -11
            state = states.jump
        }
    }
}
if (obj_player.attacking == 1)
{
    instance_destroy()
    instance_create(x, y, obj_slimedead)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    sound_play(sfx_enemyhit, false, soundtype.stereo)
}

