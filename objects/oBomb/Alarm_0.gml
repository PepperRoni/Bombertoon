/// @description Insert description here
// You can write your code in this editor

bombDestroyAble = true;

with (instance_create_depth(x,y,depth + 10,oFloorP1))
{
	image_index = random_range(0,3);
	if (place_meeting(x, y, oFloorP2))
	{
		instance_destroy(other);
		oScore2.player2ScoreDraw -= 100;
	}

}
instance_destroy();

