timePassed --;

if (timePassed % room_speed == 0) 
{
	levelTime --;
}

if (levelTime == 0)
{
	finalPlayer1Score = oScore1.player1ScoreDraw;
	finalPlayer2Score = oScore2.player2ScoreDraw;
	levelTime ++;
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
