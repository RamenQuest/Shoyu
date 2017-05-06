/// @description Collect

if (other.boost_cooldown_set > 15) {
	other.boost_cooldown_set -= 50;
} else if (other.boost_cooldown_set < 15) {
	other.boost_cooldown_set = 15
}

if (other.boost_max_speed < 40) {
	other.boost_max_speed += 5;
	other.NormalMoveSpeed += 1;
}

if (other.boost_move < 30) {
	other.boost_move += 5;
}

instance_destroy();