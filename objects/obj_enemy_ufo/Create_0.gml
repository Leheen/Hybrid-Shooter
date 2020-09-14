event_inherited();

dir = 1;
start_x = x - 25;
end_x = x + 25;

move_down_speed = room_speed * 5;

alarm[0] = room_speed * random_range(0.5, 5);
alarm[1] = move_down_speed;
