var camera = view_camera[0];
var camera_x = camera_get_view_x(camera);

if(global.game_state == STATES.PLAYING && x - sprite_width/2 > camera_x) {
	x -= spd;
}