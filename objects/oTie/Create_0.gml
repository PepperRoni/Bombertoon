x = room_width / 2;
y = room_height / 2;

coolDownResultScreen = false;

audio_play_sound(NoWinnerThisTime, 7, false);

alarm[0] = room_speed * audio_sound_length(NoWinnerThisTime);