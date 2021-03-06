var chance_change = 60;

var inst;
inst = instance_nearest(x, y, obj_player);

if (last_seen && distance_to_object(inst) > 300) {
	if (point_in_circle(x, y, last_x, last_y, 32)) {
		last_seen = false;
	} else {
		spd = 3;
		mp_potential_step(last_x, last_y, spd, false);
	}
} else {
	if (distance_to_object(inst) > 500) {
		state = states.idle;
	} else if (distance_to_object(inst) > 300) {
		if (place_free(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction))) {
			if (irandom(chance_change) = 1) {
				spd = 4;
				mp_potential_step(inst.x, inst.y, spd, false);
			} else if (irandom(chance_change) = 2) {
				motion_set(irandom(360), random(3)+3);
			}
		} else {
			motion_set(irandom(360), random(3));
		}
	} else {
		motion_set(direction, 1);
		state = states.attack;
	}
}

