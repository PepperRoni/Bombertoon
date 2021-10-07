if(place_meeting(x,y,oPlayer))
{
	oPlayer.delaySpeedUp = false;
	oPlayer.alarm [3] = room_speed * 5;
	instance_destroy();
}
