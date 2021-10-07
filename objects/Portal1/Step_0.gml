delay -= 1;
portalAble = delay <= 0;

if (place_meeting(x, y, oPlayer))
{
	if (portalAble == true)
	{
	oPlayer.y = Portal2.y;
	oPlayer.x = Portal2.x;
	
	//alarm[0] = room_speed * 3;
	portalAble = false;
	delay = 120;
	port = instance_find(Portal2, 0);
	port.delay = room_speed * 3;
	}
}

if (place_meeting(x, y, oPlayer2))
{
	if (portalAble == true)
	{
	oPlayer2.y = Portal2.y;
	oPlayer2.x = Portal2.x;
	
	//alarm[0] = room_speed * 3;
	portalAble = false;
	delay = 120;
	port = instance_find(Portal2, 0);
	port.delay = room_speed * 3;
	}
}

/*
if (place_meeting(x, y, oPlayer2) && portalAble2 == true)
{
	oPlayer2.y = Portal2.y;
	oPlayer2.x = Portal2.x;
	
	alarm[1] = room_speed * 3;
	portalAble2 = false;
}*/