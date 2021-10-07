if(place_meeting(x,y,oPlayer))
{
	oPlayer.delayBombOften = false;
	instance_destroy();
}
if(place_meeting(x,y,oPlayer2))
{
	oPlayer2.delayBombOften = false;
	instance_destroy();
}