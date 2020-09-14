var camera = view_camera[0];
var camera_x = camera_get_view_x(camera);
var camera_y = camera_get_view_y(camera);
var camera_width = camera_get_view_width(camera);
var camera_height = camera_get_view_height(camera);

if(!point_in_rectangle(x, y, camera_x, camera_y, camera_x + camera_width, camera_y + camera_height)) {
	instance_destroy(id, false);
}

if(global.game_state == STATES.PLAYING) {
	speed = spd;
}
else {
	speed = 0;
}
