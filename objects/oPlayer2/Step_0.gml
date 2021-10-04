/// @description Insert description here
// You can write your code in this editor
var keyLeft = keyboard_check(vk_left);
var keyRight = keyboard_check(vk_right);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);

var moveHorizontal = keyRight - keyLeft;
var moveVertical = keyDown - keyUp;

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

if cooldownAble == true
{
	if (place_meeting(x, y, oBomb))
	{
		hp -= 5;
		//playerSpeedY *=-1;
		if (hp<=0)
		{			
			show_message("you died");
			instance_destroy(oPlayer);
		}
		alarm[0] = cooldownTime;
		cooldownAble = false;
	}
}