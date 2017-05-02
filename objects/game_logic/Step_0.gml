/// @description Spawn Enemies

if (spawn_timer = 0)
{
	var spawn_x = irandom_range(60, 1988);
	var spawn_y = irandom_range(60, 1476);
	var nearest_player = instance_nearest(x, y, obj_player);
	
	if (
		!collision_circle(spawn_x, spawn_y, 20, obj_platform_closed, false, false) && 
		distance_to_object(nearest_player) > 100
	) {
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy)
		spawn_timer = spawn_cooldown;
	}
}

spawn_timer = spawn_timer - 1;