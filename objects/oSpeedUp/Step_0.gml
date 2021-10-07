if(place_meeting(x,y,oPlayer))
{
	oPlayer.walkSpeed *= 1.5;
	
	instance_destroy();
}
if(place_meeting(x,y,oPlayer2))
{
	oPlayer2.walkSpeed *= 1.5;

	instance_destroy();
	
}