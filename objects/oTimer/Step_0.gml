timePassed --;

if (timePassed % room_speed == 0 && levelTime != 0) 
{
	levelTime --;
}

if (levelTime == 0)
{
	finalPlayer1Score = oScore1.player1ScoreDraw;
	finalPlayer2Score = oScore2.player2ScoreDraw;
	oPlayer.inUse = false;
	oPlayer2.inUse2 = false;
	
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
	room_goto(Room3);
}

randomX = random_range(10, room_width-5);
randomY = random_range(10, room_height-5);