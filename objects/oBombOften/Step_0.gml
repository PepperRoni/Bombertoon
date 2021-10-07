if(place_meeting(x,y,oPlayer))
{
	oPlayer.cooldownBombTime *= 0.66;
	
	instance_destroy();
}
if(place_meeting(x,y,oPlayer2))
{
	oPlayer2.cooldownBombTime *= 0.66;
	
	instance_destroy();
}