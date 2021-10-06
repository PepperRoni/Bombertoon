timePassed -=1;

if (timePassed % room_speed == 0) levelTime -= 1;

if (levelTime == 0)
{
	
<<<<<<< Updated upstream
=======
	if(finalPlayer1Score > finalPlayer2Score)
	{
	with(instance_create_layer (x, y, "WinLoseScreen", oPurpleP1Wins))
	{
		draw_self();
	}
	}
	else if (finalPlayer1Score < finalPlayer2Score)
	{
		with(instance_create_layer (x, y, "WinLoseScreen", oGreenP2Wins))
	{
		draw_self();
	}
	}
	else if (finalPlayer1Score == finalPlayer2Score)
	{
	}
}

if (keyboard_check(vk_f1))
{
	room_goto(Room1);
}

if (keyboard_check(vk_f2))
{
	room_goto(Room2);

}
if (keyboard_check(vk_f3))
{
	room_goto(Room3);
>>>>>>> Stashed changes
}