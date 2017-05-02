/// @description Insert description here
// You can write your code in this editor

if (creator && target && bullet_type && burst_count){
	if (canshoot && instance_exists(creator)) {
		if (burst_count > 0) {
			canshoot = false;
			creator.spd -= 5;
			var enemy_bullet = instance_create_layer(creator.x, creator.y, "BulletsLayer", bullet_type);
			enemy_bullet.direction = point_direction(creator.x, creator.y, target.x, target.y) + random_range(-10, 10);
			burst_count -= 1;
			alarm[0] = fire_rate * room_speed/10;
		}
	}
} else {
	instance_destroy(id);
}