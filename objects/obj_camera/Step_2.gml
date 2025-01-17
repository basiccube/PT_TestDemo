var playerState = obj_player.state
var playerSpeed = obj_player.movespeed

switch playerState
{
	default:
		faceSprite = spr_peppinoHUD
		break
	
	case states.mach1:
	case states.freefall:
	case states.tackle:
	case states.punch:
		faceSprite = spr_peppinoHUD_mach1
		break
		
	case states.mach2:
		faceSprite = spr_peppinoHUD_mach2
		break
		
	case states.hurt:
		faceSprite = spr_peppinoHUD_hurt
		break
		
	case states.freefallland:
		faceSprite = spr_peppinoHUD
		if (shake_mag > 0)
			faceSprite = spr_peppinoHUD_stun
		break
		
	case states.victory:
	case states.keyget:
		faceSprite = spr_peppinoHUD_happy
		break
}

var speedState = (playerState == states.mach1 || playerState == states.mach2 || playerState == states.machslide)
if speedState
{
	speedbarSprite = spr_speedbar
	if (playerSpeed < 4)
		speedbarIndex = 1
	else if (playerSpeed >= 4 && playerSpeed < 6)
		speedbarIndex = 2
	else if (playerSpeed >= 6 && playerSpeed < 8)
		speedbarIndex = 3
	else if (playerSpeed >= 8 && playerSpeed < 10)
		speedbarIndex = 4
	else if (playerSpeed >= 10)
	{
		speedbarSprite = spr_speedbarmax
		speedbarIndex = -1
	}
}
else
{
	speedbarSprite = spr_speedbar
	speedbarIndex = 0
}