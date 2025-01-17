if (place_meeting(x, y, obj_player) && obj_player.attacking == 1)
{
    if (sprite_index == spr_pizzaboxunopen)
    {
        image_index = 0
        instance_create(x, y, obj_bangeffect)
    }
    sprite_index = spr_pizzaboxopen
    if (obj_player.state == states.mach2)
    {
        if (obj_player.machhitAnim == 0)
        {
            obj_player.machhitAnim = 1
            obj_player.image_index = 0
        }
    }
}
if (place_meeting(x, y, obj_player) && obj_player.keyJump.held && obj_player.vsp > 0 && (obj_player.state == states.jump || obj_player.state == states.highjump))
{
    if (sprite_index == spr_pizzaboxunopen)
    {
        image_index = 0
        instance_create(x, y, obj_bangeffect)
    }
    sprite_index = spr_pizzaboxopen
	
    with (obj_player)
    {
        sprite_index = spr_player_Sjump
        image_index = 0
        jumpstop = true
        vsp = -14
        state = states.jump
    }
}
if (sprite_index == spr_pizzaboxopen && floor(image_index) == 3 && createdpizza == 0)
{
    createdpizza = 1
    instance_create(x, y, obj_bigcollect)
}
if (sprite_index == spr_pizzaboxopen && floor(image_index) == 16)
    instance_destroy()

