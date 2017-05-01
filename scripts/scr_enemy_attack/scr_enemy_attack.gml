var inst;
inst = instance_nearest(x, y, obj_player);

if (distance_to_object(inst) < 250) {
	spd = 3;
	mp_potential_step(inst.x, inst.y, 2, false);
	if (cooldown < 1 && burst_count < 6)
	{
		var enemy_bullet = instance_create_layer(x, y, "BulletsLayer", obj_bullet_enemy);
		enemy_bullet.direction = point_direction(x, y, inst.x, inst.y) + random_range(-10, 10);
		cooldown = attack_speed;
		burst_count -= 1;
	} else if (burst_count == 0) {
		burst_count = 5;
		cooldown = 60;
	}
	cooldown -= 1;
} else {
	state = states.search;
}