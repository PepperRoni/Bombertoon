//Inputs
var keyLeft = keyboard_check(vk_left);
var keyRight = keyboard_check(vk_right);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);

//Variables for direction
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


//Speed
playerSpeedH = moveHorizontal * walkSpeed;
playerSpeedY = moveVertical * walkSpeed;

//Cancels diagonal movement
if (playerSpeedH != 0 && playerSpeedY != 0)
{
	playerSpeedY = 0;
}

//Wall collision
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

//Movement
x += playerSpeedH;
y += playerSpeedY;

//Bomb Colilision
if cooldownAble == true
{
	if (place_meeting(x, y, oBomb))
	{
		hp -= 5;
		flash = 8;
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