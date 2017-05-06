/// @description Collect
show_debug_message(other.attack_speed);
if (other.attack_speed > 4) {
	other.attack_speed -= 1;
}
show_debug_message(other.attack_speed);
instance_destroy();