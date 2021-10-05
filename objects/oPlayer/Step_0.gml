/// @description Insert description here
// You can write your code in this editor
var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

inp_Bomb = keyboard_check_pressed(vk_space);

var moveHorizontal = keyRight - keyLeft;
var moveVertical = keyDown - keyUp;

if (moveHorizontal < 0)
{
	image_index = 3;
}
else if (moveHorizontal > 0)
{
	image_index = 1;
}
if (moveVertical < 0)
{
	image_index = 2;
}
else if (moveVertical > 0)
{
	image_index = 0;
}

playerSpeedH = moveHorizontal * walkSpeed;
playerSpeedY = moveVertical * walkSpeed;

if (playerSpeedH != 0 && playerSpeedY != 0)
{
	playerSpeedY = 0;
}

if (place_meeting(x + playerSpeedH, y, oWall))
{
	 while (!place_meeting(x + sign(playerSpeedH), y, oWall))
	{
		x += sign(playerSpeedH);
	}
	playerSpeedH = 0;
}
if (place_meeting(x, y + + playerSpeedY, oWall))
{
	while (!place_meeting(x, y + sign(playerSpeedY), oWall))
	{
		y += sign(playerSpeedY);
	}
	playerSpeedY = 0;
}

x += playerSpeedH;
y += playerSpeedY;

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
			instance_deactivate_object(oPlayer);
			alarm[0] = playerdeathCooldownTime;
			playerdeathCooldownAble = false;
		}
		flash = 8;
		alarm[0] = cooldownTime;
		cooldownAble = false;
	}
}

if (hp <=0 && playerdeathCooldownAble == true)
{
	instance_activate_object(oPlayer2);
	hp = 10;
}