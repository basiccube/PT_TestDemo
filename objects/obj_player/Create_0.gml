depth = -6
grav = 0.5
hsp = 0
vsp = 0
movespeed = 0
grounded = false
state = states.normal
xscale = 1
yscale = 1

jumpstop = false
jumpAnim = true
landAnim = false
machslideAnim = false
crouchAnim = true
machhitAnim = false

inv_frames = 0
hurtbounce = 0
hurted = false

mach2 = 0
input_buffer_jump = 8
targetRoom = room
targetDoor = "A"
hallway = false
hallwaydirection = 0
flash = 0

global.collect = 0
global.key = false
global.shroomfollow = false
global.cheesefollow = false
global.tomatofollow = false
global.sausagefollow = false
global.pineapplefollow = false

audio_falloff_set_model(audio_falloff_exponent_distance_scaled)
audio_listener_orientation(0, -1, 0, 0, 0, -1)
playeremitter = audio_emitter_create()
audio_emitter_falloff(playeremitter, 240, 820, 1)

combo = 0
in_water = 0
key_particles = false
barrel = false
attacking = 0
punch = 0
instakillmove = 0
ladderbuffer = 0
momemtum = 0
