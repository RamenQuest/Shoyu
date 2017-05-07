/// @description Insert description here
// You can write your code in this editor

if (instance_exists(creator) && instance_exists(target) && bullet_type && burst_count){
	creator_x = creator.x;
	creator_y = creator.y;
	target_x = target.x;
	target_y = target.y;
	if (canshoot) {
		if (burst_count > 0) {
			canshoot = false;
			creator.spd -= 5;

			var enemy_bullet = instance_create_layer(creator_x, creator_y, "BulletsLayer", bullet_type);
			enemy_bullet.direction = point_direction(creator_x, creator_y, target_x, target_y) + random_range(-10, 10);
			burst_count -= 1;
			alarm[0] = fire_rate * room_speed/10;
		}
	}
} else {
	instance_destroy(id);
}