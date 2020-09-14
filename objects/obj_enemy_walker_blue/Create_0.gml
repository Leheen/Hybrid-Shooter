event_inherited();
color = COLORS.BLUE;
image_blend = COLOR_BLUE;

spd = 3;
path_start(pth_enemy_walker, spd, path_action_reverse, false);
alarm[0] = room_speed * random_range(0.5, 5);