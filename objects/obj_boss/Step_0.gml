event_inherited();

if(instance_exists(obj_player)) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	direction = dir;
}

if(hp < max_hp/2 && phase == 0) {
	phase = 1;
	alarm[1] = room_speed * 0.1;
}