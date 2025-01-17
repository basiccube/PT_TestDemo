input_get()
switch state
{
    case states.normal:
        scr_player_normal()
        break
    case states.stunned:
        scr_player_stunned()
        break
    case states.highjump:
        scr_player_highjump()
        break
    case states.grind:
        scr_player_grind()
        break
    case states.punch:
        scr_player_punch()
        break
    case states.runonball:
        scr_player_runonball()
        break
    case states.boulder:
        scr_player_boulder()
        break
    case states.keyget:
        scr_player_keyget()
        break
    case states.tackle:
        scr_player_tackle()
        break
    case states.slipnslide:
        scr_player_slipnslide()
        break
    case states.ladder:
        scr_player_ladder()
        break
    case states.jump:
        scr_player_jump()
        break
    case states.victory:
        scr_player_victory()
        break
    case states.comingoutdoor:
        scr_player_comingoutdoor()
        break
    case states.crouch:
        scr_player_crouch()
        break
    case states.crouchjump:
        scr_player_crouchjump()
        break
    case states.crouchslide:
        scr_player_crouchslide()
        break
    case states.mach1:
        scr_player_mach1()
        break
    case states.mach2:
        scr_player_mach2()
        break
    case states.machslide:
        scr_player_machslide()
        break
    case states.bump:
        scr_player_bump()
        break
    case states.hurt:
        scr_player_hurt()
        break
    case states.freefall:
        scr_player_freefall()
        break
    case states.freefallland:
        scr_player_freefallland()
        break
    case states.hang:
        scr_player_hang()
        break
    case states.door:
        scr_player_door()
        break
    case states.barrelnormal:
        scr_player_barrelnormal()
        break
    case states.barrelfall:
        scr_player_barrelfall()
        break
    case states.barrelmach1:
        scr_player_barrelmach1()
        break
    case states.barrelmach2:
        scr_player_barrelmach2()
        break
    case states.barrelfloat:
        scr_player_barrelfloat()
        break
    case states.barrelcrouch:
        scr_player_barrelcrouch()
        break
    case states.barrelslipnslide:
        scr_player_barrelslipnslide()
        break
    case states.barrelroll:
        scr_player_barrelroll()
        break
    case states.current:
        scr_player_current()
        break
}

audio_emitter_position(playeremitter, x, y, 0)
if (input_buffer_jump < 8)
    input_buffer_jump++
if (key_particles && global.key)
    instance_create(x + random_range(-25, 25), y + random_range(-35, 25), obj_keyeffect)

if (inv_frames == 0 && !hurted && state != states.door && state != states.comingoutdoor)
    image_alpha = 1
if (state == states.mach2 || state == states.punch || state == states.freefall || state == states.barrelroll)
    attacking = 1
else
    attacking = 0
if (state == states.freefall)
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if ((place_meeting(x, y, obj_water) || place_meeting(x, y, obj_water2) || place_meeting(x, y, obj_current) || place_meeting(x, y, obj_current2)) && state != states.barrelfloat)
	in_water = true
else
	in_water = false
if (in_water && alarm[8] <= 0)
	alarm[8] = 30
if (in_water)
	grav = 0.35
else
	grav = 0.5
if (state != states.mach1 && state != states.jump)
    momemtum = 0
if (state != states.jump)
    ladderbuffer = 0

if (state != states.bump && state != states.crouch && state != states.hurt && state != states.crouchslide && state != states.crouchjump && state != states.barrelroll && state != states.barrelslipnslide)
    mask_index = spr_player_mask
else
    mask_index = spr_crouchmask

if (state != states.door)
{
	var flag = collisionflags.none
	if (state == states.boulder)
		flag = collisionflags.ignoreplatforms
	
	perform_collisions_player(flag)
}