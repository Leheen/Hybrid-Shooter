var camera = view_camera[0];
var camera_x = camera_get_view_x(camera);
var camera_y = camera_get_view_y(camera);
var camera_width = camera_get_view_width(camera);
var camera_height = camera_get_view_height(camera);
	
if(point_in_rectangle(x, y, camera_x, camera_y, camera_x + camera_width, camera_y + camera_height)) {
	var bar_width = 200;
	draw_healthbar(camera_width/2 - bar_width/2, 20, camera_width/2 + bar_width/2, 40, (hp/max_hp) * 100, c_dkgray, c_red, c_green, 0, true, true);
}