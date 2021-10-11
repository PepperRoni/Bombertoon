if(delayBombOften == false) 
{
	cooldownBombTime *= 0.4;
	alarm[3] = room_speed * 15;
	delayBombOften = true;
}
if(delaySpeedUp == false)
{
	walkSpeed *= 1.5;
	alarm [4] = room_speed * 10;
	delaySpeedUp = true;
}


if(inUse == true)
{
inp_Bomb = keyboard_check_pressed(vk_space);

//Movement
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

//Droping Bomb
if (cooldownBombAble == true)
{
	if(inp_Bomb)
	{
		instance_create_depth(x, y, depth, oBomb);
		alarm[0] = cooldownBombTime;
		cooldownBombAble = false;
	}
}

//Bomb Collision
if (cooldownAble == true && inUseDelayTime == true)
{
	if (place_meeting(x, y, oBomb2))
	{
		if(cooldownBombAble == true)
		{
			audio_play_sound(ArghP1_Left, 5, false)
			hp -= 5;
		}
		//playerSpeedY *=-1;
		if (hp<=0)
		{		
			inUse = false;
			inUseDelayTime = false;
			paralizedSound = true;
			alarm[1] = room_speed * 3;
			alarm[2] = room_speed * 10;
			instance_destroy(oBomb2);
		}
		flash = 8;
		alarm[0] = cooldownTime;
		cooldownAble = false;
	}
}
}
if (inUse == false) 
{
if (paralizedSound == true) audio_play_sound(LiquidPlink, 10, false);
paralizedSound = false;
sprite_index = sParalizedP1;
image_speed = walkSpeed/3;
}

//Reset Hp
if (hp <= 0) hp = 10;
