/// @description Insert description here
// You can write your code in this editor

bombDestroyAble = true;

//Creates Splash
with (instance_create_depth(x,y,depth + 10,oFloorP1))
{
	
	image_index = random_range(0,3);
	if (place_meeting(x, y, oFloorP2))
	{
	var inst = instance_place(x, y, oFloorP2);
	if(inst != noone)
	
		{
			instance_destroy(inst);
			oScore2.player2ScoreDraw -= 100;
		}
	}
}

//Players get damage from bombs
with (instance_create_depth(x, y, depth, oExplotionDamage))
{
if (place_meeting(x, y , oPlayer))
	{
		oPlayer.flash = 8
		oPlayer.hp -= 5;
		if (oPlayer.hp > 0) audio_play_sound(Argh, 5, false);
		if (oPlayer.hp<=0)
		{		
			oPlayer.paralizedSound = true;
			oPlayer.inUse = false;
			oPlayer.inUseDelayTime = false;
			oPlayer.alarm[1] = room_speed * 3;
			oPlayer.alarm[2] = room_speed * 10;
			oPlayer.alarm[0] = oPlayer.cooldownTime;
			oPlayer.cooldownAble = false;
		}
	}
if (place_meeting(x, y , oPlayer2))
	{
		audio_play_sound(Argh, 5, false);
		oPlayer2.flash = 8
		oPlayer2.hp -=5;
		if (oPlayer2.hp > 0) audio_play_sound(Argh, 5, false);
		if (oPlayer2.hp<=0)
		{		
			oPlayer2.paralizedSound = true;
			oPlayer2.inUse = false;
			oPlayer2.inUseDelayTime = false;
			oPlayer2.alarm[1] = room_speed * 3;
			oPlayer2.alarm[2] = room_speed * 10;
			oPlayer2.alarm[0] = oPlayer2.cooldownTime;
			oPlayer2.cooldownAble = false;
		}
	}
	instance_destroy();
}

audio_play_sound(LiquidExplotion, 6, false);


instance_destroy();


