
inp_Bomb = keyboard_check_pressed(vk_space);
horizontalCheck = keyboard_check(ord("A")) + keyboard_check(ord("D"));

if (keyboard_check(ord("A")) && place_free(x - collitionSpeed, y))
{
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer1;
	if(image_xscale > 0)
		{
			image_xscale *= -1;
		}
}
else if (keyboard_check(ord("D")) && place_free(x + collitionSpeed, y))
{
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer1;
	if(image_xscale < 0)
		{
			image_xscale *= -1;
		}
}
if (keyboard_check(ord("W")) && place_free(x, y - collitionSpeed) && horizontalCheck == 0)
{
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sBackPlayer1;
}
if (keyboard_check(ord("S")) && place_free(x, y + collitionSpeed) && horizontalCheck == 0)
{
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sFrontPlayer1;	
}
if (keyboard_check(vk_nokey))
{
	image_speed = 0;
}
if cooldownBombAble == true
{
	if(inp_Bomb)
	{
		instance_create_depth(x, y, depth, oBomb);
		alarm[0] = cooldownBombTime;
		cooldownBombAble = false;
	}
}

if cooldownAble == true
{
	if (place_meeting(x, y, oBomb2))
	{
		if(cooldownBombAble == true)
		{
			hp -= 5;
		}
		//playerSpeedY *=-1;
		if (hp<=0)
		{			
			show_message("Boom");
			instance_destroy(oBomb2);
			global.lives1 = 0;
			instance_deactivate_object(oPlayer);
			//alarm[0] = playerdeathCooldownTime;
			//playerdeathCooldownAble = false;
		}
		flash = 8;
		alarm[0] = cooldownTime;
		cooldownAble = false;
	}
}