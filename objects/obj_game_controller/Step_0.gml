var _fullscrn = keyboard_check_pressed(ord("F"));

if _fullscrn window_set_fullscreen(!window_get_fullscreen());

if (keyboard_check_pressed(vk_enter)) {
	switch(room){
		//case rm_start:
		//	room_goto(rm_game);
		//	break;
		case rm_win:			
		case rm_gameover:
			RESTART_ALL;
			break;
	}
}

// start music HTML
if (room == rm_start){
			
	 if !audio_is_playing(snd_start) audio_play_sound(snd_start, 2, true);
}






