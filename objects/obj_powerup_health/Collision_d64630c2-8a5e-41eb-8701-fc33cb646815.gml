/// @description Collect

other.hp += 5;
other.attack_speed = clamp(other.hp, 0, 20);
instance_destroy();