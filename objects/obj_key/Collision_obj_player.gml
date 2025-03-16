if (!inv_frame && other.state != states.hurt)
{
    instance_destroy()
    global.key = true
	
	with (other)
	{
		key_particles = true
	    alarm[7] = 30
		state = states.keyget
	    image_index = 0
	}
    audio_pause_all()
}