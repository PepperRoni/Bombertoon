if(place_meeting(x,y,oPlayer))
{
	oPlayer.cooldownBombTime *= 0.66;
	alarm [0] = room_speed * 5;
	instance_destroy();
}
