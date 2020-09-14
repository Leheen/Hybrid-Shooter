event_inherited();

if(global.game_state == STATES.PLAYING) {
	if(x <= start_x || x >= end_x) {
		dir *= -1;
	}
	x += spd * dir;
}