levelTime = 120;
timePassed = room_speed;

audio_play_sound(CalamariSong, 7, true);

// Alarm for oBombOften spawn
alarm [0] = room_speed * 25;
// Alarm for oSpeedUp spawn
alarm [1] = room_speed * 30;


