/// @description Bullet collision with enemy

with (other) // other means any obj_enemy, i.e. discreet objects rather than applying to all
{
	hp = hp -1;
	state = states.search;
}

instance_destroy();