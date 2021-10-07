if(place_meeting(x,y,oPlayer))
{
	oPlayer.cooldownBombTime *= 0.66;
	instance_destroy();
}
