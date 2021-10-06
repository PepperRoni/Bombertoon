if (image_index = 33) 
{
	image_speed = 0;
	image_xscale *= 2;
	image_yscale *= 2;
}

if(bombDestroyAble == true && cooldownBombAble == true)
{
	instance_destroy();
	audio_play_sound(Explosion9, 1, 0);
	alarm[0] = bombDestroyTime;
	bombDestroyAble = false;
}