/// @description Insert description here
// You can write your code in this editor

bombDestroyAble = true;

with (instance_create_depth(x,y,depth + 10, oFloorP2))
{
	image_index = random_range(0,3);

	if (place_meeting(x, y, oFloorP1))
	{
		instance_destroy(oFloorP1);
		oScore1.player1ScoreDraw -= 100;
	}
}
instance_destroy();