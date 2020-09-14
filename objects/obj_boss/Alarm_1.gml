/// @description Phase 2: growth
if(sprite_width < 120 * 3) {
	if(global.game_state == STATES.PLAYING) {
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
	
	alarm[1] = room_speed * 0.1;
}
else {
	atk_delay = 1;
	alarm[2] = room_speed * 4;
}