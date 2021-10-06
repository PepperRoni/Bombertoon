
if (inUse2 == true)
{
	
inp_Bomb = keyboard_check_pressed(vk_enter);
horizontalCheck = keyboard_check(vk_left) + keyboard_check(vk_right);

if (keyboard_check(vk_left) && place_free(x - collitionSpeed, y))
{
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer2;
	if(image_xscale > 0)
		{
			image_xscale *= -1;
		}
}
else if (keyboard_check(vk_right) && place_free(x + collitionSpeed, y))

{
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer2;
	if(image_xscale < 0)
		{
			image_xscale *= -1;
		}
}
if (keyboard_check(vk_up) && place_free(x, y - collitionSpeed) && horizontalCheck == 0)
{
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sBackPlayer2;
}
if (keyboard_check(vk_down) && place_free(x, y + collitionSpeed) && horizontalCheck == 0)
{
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sFrontPlayer2;	
}
if (keyboard_check(vk_nokey))
{
	image_speed = 0;
}
if cooldownBombAble == true
{
	if(inp_Bomb)
	{
		instance_create_depth(x, y, depth, oBomb2);
		alarm[0] = cooldownBombTime;
		cooldownBombAble = false;
	}
}

if cooldownAble == true
{
	if (place_meeting(x, y, oBomb))
	{
		if(cooldownBombAble == true)
		{
			hp -= 5;
		}
		//playerSpeedY *=-1;
		if (hp<=0)
		{		
			inUse = false;
			alarm[1] = room_speed * 2;
			show_message("Boom");
			instance_destroy(oBomb);
		}
		flash = 8;
		alarm[3] = cooldownTime;
		cooldownAble = false;
	}
}

}