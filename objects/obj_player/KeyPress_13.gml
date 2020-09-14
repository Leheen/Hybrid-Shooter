/// @description Super attack
if(super_attack >= 100) {
	var camera = view_camera[0];
	var camera_x = camera_get_view_x(camera);
	var camera_y = camera_get_view_y(camera);
	var camera_width = camera_get_view_width(camera);
	var camera_height = camera_get_view_height(camera);
	
	with(obj_enemy) {
		if(point_in_rectangle(x, y, camera_x, camera_y, camera_x + camera_width, camera_y + camera_height)) {
			if(object_index == obj_boss) {
				hp -= other.atk_super;
			}
			else {
				instance_destroy();
			}
		}
	}
	
	super_attack = 0;
}