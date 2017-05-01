/// @description Spawn Enemies

if (spawn_timer = 0)
{
	var spawn_x = irandom_range(60, 1988);
	var spawn_y = irandom_range(60, 1476);
	
	if (place_free(spawn_x, spawn_y)) {
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy)
		spawn_timer = spawn_cooldown;
	}
}

spawn_timer = spawn_timer - 1;