/// @description Insert description here
// You can write your code in this editor
if (image_index = 33) 
{
	image_speed = 0;
	image_xscale *= 2;
	image_yscale *= 2;
}


if(bombDestroyAble == true && cooldownBombAble == true)
{
	instance_destroy();
	alarm[0] = bombDestroyTime;
	bombDestroyAble = false;
}