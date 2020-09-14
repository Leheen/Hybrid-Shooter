hp = 10;
spd = 10;
atk = 1;
atk_super = 2;
super_attack = 0;

can_shoot = true;
shoot_delay = room_speed * 0.2;
direction = point_direction(x, y, x, y-1);

if(room == rm_level_1) {
	color = COLORS.NONE;
}
else {
	image_blend = COLOR_BLUE;
	color = COLORS.BLUE;
}