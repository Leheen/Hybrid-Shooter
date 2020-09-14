/// @description Shoot randomly
var camera = view_camera[0];
var camera_x = camera_get_view_x(camera);
var camera_y = camera_get_view_y(camera);
var camera_width = camera_get_view_width(camera);
var camera_height = camera_get_view_height(camera);

if(global.game_state == STATES.PLAYING) {
	if(x > camera_x && x < (camera_x + camera_width) && y > camera_y && y < (camera_y + camera_height)) {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
		bullet.atk = atk;
		bullet.direction = direction;
		bullet.color = color;
		
		switch(color) {
			case COLORS.RED:
				bullet.image_blend = COLOR_RED;
				break;
			case COLORS.BLUE:
				bullet.image_blend = COLOR_BLUE;
				break;
			default:
				bullet.image_blend = c_white;
				break;
		}
	}
}

alarm[0] = room_speed * random_range(0.5, 5);