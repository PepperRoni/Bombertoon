/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x + sign(moveHorizontal), y, oWall))
{
	 while (!place_meeting(x + sign(moveHorizontal), y, oWall))
	{
		x += sign(moveHorizontal);
	}
moveHorizontal = 0;
}
if (place_meeting(x, y + + sign(moveVertical), oWall))
{
	while (!place_meeting(x, y + sign(moveVertical), oWall))
	{
		y += sign(moveVertical);
	}
	moveVertical = 0;
}