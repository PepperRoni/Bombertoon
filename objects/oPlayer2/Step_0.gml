
if (inUse2 == true)
{
	
inp_Bomb = keyboard_check_pressed(vk_enter);
horizontalCheck = keyboard_check(vk_left) + keyboard_check(vk_right);

//vi ska ha vertical check också
verticalCheck = keyboard_check(vk_up) + keyboard_check(vk_down);


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
if cooldownBombAble2 == true
{
	if(inp_Bomb)
	{
		instance_create_depth(x, y, depth, oBomb2);
		alarm[0] = cooldownBombTime2;
		cooldownBombAble2 = false;
	}
}

if (cooldownAble2 == true && inUseDelayTime2 == true)
{
	if (place_meeting(x, y, oBomb))
	{
		if(cooldownBombAble2 == true)
		{
			hp -= 5;
		}
		//playerSpeedY *=-1;
		if (hp<=0)
		{		
			inUse2 = false;
			paralizedSound = true;
			inUseDelayTime2 = false;
			alarm[1] = room_speed * 3;
			alarm[2] = room_speed * 10;
			instance_destroy(oBomb);
		}
		flash = 8;
		alarm[0] = cooldownTime2;
		cooldownAble2 = false;
	}
}
}
if (inUse2 == false) 
{
	if (paralizedSound) audio_play_sound(LiquidPlink, 3, false);
	paralizedSound = false;
	sprite_index = sParalizedP2;
	image_speed = walkSpeed/3;
}
