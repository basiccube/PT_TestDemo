x = (other.x + (64 * other.image_xscale))
y = other.y
image_xscale = other.image_xscale
if (place_meeting(x, y, obj_player) && obj_player.sprite_index != spr_player_barrelcrouch)
{
    other.roam = 0
    other.alarm[0] = 100
}

