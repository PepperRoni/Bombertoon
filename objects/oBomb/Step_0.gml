/// @description Insert description here
// You can write your code in this editor
if(bombDestroyAble == true && cooldownBombAble == true)
{
	instance_destroy();
	alarm[0] = bombDestroyTime;
	bombDestroyAble = false;
}