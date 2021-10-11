if(delayBombOften == false) 
{
	cooldownBombTime2 *= 0.4;
	alarm[3] = room_speed * 15
	delayBombOften = true;
}
if(delaySpeedUp == false)
{
	walkSpeed *= 1.5;
	alarm [4] = room_speed * 10;
	delaySpeedUp = true;
}
if (inUse2 == true)
{
inp_Bomb = keyboard_check_pressed(vk_enter);

//Movement
horizontalCheck = keyboard_check(vk_left) + keyboard_check(vk_right);
if (keyboard_check(vk_left) && place_free(x - collitionSpeed, y) && moveAfterMenu == true)
{
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer2;
	if(image_xscale > 0)
		{
			image_xscale *= -1;
		}
}
else if (keyboard_check(vk_right) && place_free(x + collitionSpeed, y) && moveAfterMenu == true)

{
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sSidePlayer2;
	if(image_xscale < 0)
	{
		image_xscale *= -1;
	}
}
if (keyboard_check(vk_up) && place_free(x, y - collitionSpeed) && horizontalCheck == 0 && moveAfterMenu == true)
{
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sBackPlayer2;
}
if (keyboard_check(vk_down) && place_free(x, y + collitionSpeed) && horizontalCheck == 0 && moveAfterMenu == true)
{
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sFrontPlayer2;	
}
if (keyboard_check(vk_nokey))
{
	image_speed = 0;
}

//Dropping Bomb
if cooldownBombAble2 == true
{
	if(inp_Bomb)
	{
		instance_create_depth(x, y, depth, oBomb2);
		alarm[0] = cooldownBombTime2;
		cooldownBombAble2 = false;
	}
}

//Bomb Collision
if (cooldownAble2 == true && inUseDelayTime2 == true)
{
	if (place_meeting(x, y, oBomb))
	{
		if(cooldownBombAble2 == true)
		{
			audio_play_sound(ArghP2_Right, 5, false)
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

//Reset Hp
if (hp <= 0) hp = 10;