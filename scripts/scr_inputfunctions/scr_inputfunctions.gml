function input()
{
	return
	{
		up : vk_up,
		down : vk_down,
		left : vk_left,
		right : vk_right,
		
		jump : ord("Z"),
		dash : ord("X"),
		start : vk_escape,
		
		gamepad :
		{
			up : gp_padu,
			down : gp_padd,
			left : gp_padl,
			right : gp_padr,
		
			jump : gp_face1,
			dash : gp_face3,
			start : gp_start,
		},
	};
}

function input_key(_input, _gpinput, _invert = false)
{
	var gamepadDevice = 0
	for (var i = 0; i < gamepad_get_device_count(); i++)
	{
		if gamepad_is_connected(i)
		{
			gamepadDevice = i
			break
		}
	}
	
	if _invert
	{
		return
		{
			pressed : -(keyboard_check_pressed(_input) || gamepad_button_check_pressed(gamepadDevice, _gpinput)),
			held : -(keyboard_check(_input) || gamepad_button_check(gamepadDevice, _gpinput)),
		};
	}
	
	return
	{
		pressed : (keyboard_check_pressed(_input) || gamepad_button_check_pressed(gamepadDevice, _gpinput)),
		held : (keyboard_check(_input) || gamepad_button_check(gamepadDevice, _gpinput)),
	};
}

function input_get()
{	
	keyUp = input_key(input().up, input().gamepad.up)
	keyDown = input_key(input().down, input().gamepad.down)
	keyLeft = input_key(input().left, input().gamepad.left, true)
	keyRight = input_key(input().right, input().gamepad.right)
	
	keyJump = input_key(input().jump, input().gamepad.jump)
	keyDash = input_key(input().dash, input().gamepad.dash)
	keyStart = input_key(input().start, input().gamepad.start)
}