var camera = view_camera[0];
var camera_width = camera_get_view_width(camera);

if(global.game_state == STATES.PLAYING && x + sprite_width/2 < camera_width) {
	x += spd;
}     