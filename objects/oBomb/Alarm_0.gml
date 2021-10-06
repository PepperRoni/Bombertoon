/// @description Insert description here
// You can write your code in this editor

bombDestroyAble = true;

with (instance_create_depth(x,y,depth + 10,oFloorP1))
{
	image_index = random_range(0,3);
	var inst = instance_place(x, y, oFloorP2);
	if(inst != noone)
	
		{
			instance_destroy(inst);
			oScore2.player2ScoreDraw -= 100;
		}
}
instance_destroy();

