/// @description Insert description here
// You can write your code in this editor

if (creator && target && bullet_type && burst_count){
	if (canshoot) {
		if (burst_count > 0) {
			canshoot = false;
			
			var enemy_bullet = instance_create_layer(creator.x, creator.y, "BulletsLayer", bullet_type);
			enemy_bullet.direction = point_direction(creator.x, creator.y, target.x, target.y) + random_range(-10, 10);
			creator.spd -= 1;
			burst_count -= 1;
			alarm[0] = fire_rate * room_speed/10;
		}
	}
} else {
	show_debug_message("DESTROY SELF");
	instance_destroy();
}