/// @description Insert description here
// You can write your code in this editor
if(bombDestroyAble == true && cooldownBombAble == true)
{
	instance_destroy();
	audio_play_sound(Explosion9, 1, 0);
	alarm[0] = bombDestroyTime;
	bombDestroyAble = false;
}