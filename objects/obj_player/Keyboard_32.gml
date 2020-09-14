if(global.game_state == STATES.PLAYING && can_shoot) {
	can_shoot = false;
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	bullet.atk = atk;
	bullet.direction = point_direction(x, y, x, y-1);
	
	switch(color) {
		case COLORS.RED:
			bullet.color = COLORS.RED;
			bullet.image_blend = COLOR_RED;
			break;
		case COLORS.BLUE:
			bullet.color = COLORS.BLUE;
			bullet.image_blend = COLOR_BLUE;
			break;
		default:
			bullet.color = COLORS.NONE;
			bullet.image_blend = c_white;
			break;
	}
	
	audio_play_sound(snd_shoot, 1, false);
	alarm[0] = shoot_delay;
}
