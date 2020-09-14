if(global.game_state == STATES.PLAYING) {
	if(instance_exists(obj_player)) {
		var camera_x = camera_get_view_x(camera);
		var camera_y = camera_get_view_y(camera);
		var camera_width = camera_get_view_width(camera);
		var camera_height = camera_get_view_height(camera);
		
		if(camera_y <= 0 ) {
			spd = 0;
		}
		speed = spd;
		obj_player.speed = spd;
		
		if(obj_player.x - obj_player.sprite_width/2 <= camera_x) {
			obj_player.x = camera_x + obj_player.sprite_width/2;
		}
		if(obj_player.x + obj_player.sprite_width/2 >= camera_x + camera_width) {
			obj_player.x = camera_x + camera_width - obj_player.sprite_width/2;
		}
		if(obj_player.y + obj_player.sprite_height/2 >= camera_y + camera_height) {
			obj_player.y = camera_y + camera_height - obj_player.sprite_height/2
		}
		if(obj_player.y - obj_player.sprite_height/2 <= camera_y) {
			obj_player.y = camera_y + obj_player.sprite_height/2;
		}
	}
}
else {
	speed = 0;
	if(instance_exists(obj_player)) {
		obj_player.speed = 0;
	}
}