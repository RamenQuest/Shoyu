/// @description Spawn Enemies
if (spawn_timer <= 0) {
	spawn_x = irandom_range(60, 1988);
	spawn_y = irandom_range(60, 1476);
	nearest_player = instance_nearest(x, y, obj_player);
	if (
		!collision_circle(spawn_x, spawn_y, 20, obj_platform_closed, false, false) && 
		distance_to_object(nearest_player) > 200
	) {
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
		spawn_timer = spawn_cooldown;
	} else {
		spawn_timer = 1;
	}
} else {
	spawn_timer -= 1;
}