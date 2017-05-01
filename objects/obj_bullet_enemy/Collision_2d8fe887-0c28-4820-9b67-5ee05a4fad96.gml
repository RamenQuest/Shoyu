/// @description Hit player
// You can write your code in this editor

with (other) // other means any obj_enemy, i.e. discreet objects rather than applying to all
{
	hp = hp -1;
}

instance_destroy();