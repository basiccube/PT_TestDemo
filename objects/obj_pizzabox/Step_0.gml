if (sprite_index == spr_pizzaboxunopen)
{
	with (obj_player)
	{
		if place_meeting(x, y, other)
		{
			var openPizzabox = false
			if attacking
			{
				openPizzabox = true
				if (state == states.mach2)
			    {
			        if !machhitAnim
			        {
			            machhitAnim = true
			            image_index = 0
			        }
			    }
			}
			else if (keyJump.held && vsp > 0 && (state == states.jump || state == states.highjump))
			{
				openPizzabox = true
				with (obj_player)
				{
					sprite_index = spr_player_Sjump
					image_index = 0
					jumpstop = true
					vsp = -14
					state = states.jump
				}
			}
			
			if openPizzabox
			{
				sprite_index = spr_pizzaboxopen
				image_index = 0
				instance_create(x, y, obj_bangeffect)
			}
		}
	}
}
else if (sprite_index == spr_pizzaboxopen)
{
	if (floor(image_index) == 3 && !createdPizza)
	{
		instance_create(x, y, obj_bigcollect)
		createdPizza = true
	}
	else if (floor(image_index) == image_number - 1)
		instance_destroy()
}