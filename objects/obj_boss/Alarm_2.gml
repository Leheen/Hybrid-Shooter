/// @description Ennemies spawn
if(global.game_state == STATES.PLAYING) {
	var camera = view_camera[0];
	var camera_x = camera_get_view_x(camera);
	var camera_y = camera_get_view_y(camera);
	var camera_width = camera_get_view_width(camera);
	var camera_height = camera_get_view_height(camera);
	
	var minion_x = random_range(camera_x, camera_x + camera_width);
	var minion_y = random_range((camera_y + camera_height)/2, camera_y + camera_height);
	instance_create_layer(minion_x, minion_y, "Instances", obj_enemy_turret_red);
}

alarm[2] = room_speed * 2;