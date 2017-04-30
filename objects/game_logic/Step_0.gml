/// @description Spawn Enemies

if (spawn_timer = 0)
{
	instance_create_layer(choose(55,1970), choose(55,1970), "Instances", obj_enemy)
	spawn_timer = spawn_cooldown;
}

spawn_timer = spawn_timer - 1;