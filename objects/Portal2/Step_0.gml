/// @description Insert description here
// You can write your code in this editor

delay -= 1;
portalAble = delay <= 0;

if (place_meeting(x, y, oPlayer))
{
	if (portalAble == true)
	{
	oPlayer.y = Portal.y;
	oPlayer.x = Portal.x;
	
	//alarm[0] = room_speed * 3;
	portalAble = false;
	delay = 120;
	port = instance_find(Portal, 0);
	port.delay = room_speed * 3;
	}
}

if (place_meeting(x, y, oPlayer))
{
	if (portalAble == true)
	{
	oPlayer.y = Portal.y;
	oPlayer.x = Portal.x;
	
	//alarm[0] = room_speed * 3;
	portalAble = false;
	delay = 120;
	port = instance_find(Portal, 0);
	port.delay = room_speed * 3;
	}
}

/*if (place_meeting(x, y, oPlayer))
{
	if (portalAble == true)
	{
	oPlayer.y = Portal.y;
	oPlayer.x = Portal.x;
	
	//alarm[0] = room_speed * 3;
	portalAble = false;
	}
}
else
{
	portalAble = true;
}*/



/*
if (place_meeting(x, y, oPlayer) && portalAble11 == true)
{
	oPlayer.y = Portal.y;
	oPlayer.x = Portal.x;

	alarm [0] = room_speed * 3;
	portalAble11 = false;
}
/*
if (place_meeting(x, y, oPlayer2) && portalAble2 == true)
{
	oPlayer2.y = Portal.y;
	oPlayer2.x = Portal.x;

	alarm[1] = room_speed * 3;
	portalAble2 = false;
	
}*/
