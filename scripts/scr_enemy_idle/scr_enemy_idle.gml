var chance_change = 30;

var inst;
inst = instance_nearest(x, y, obj_player);

if (distance_to_object(inst) > 150) {
	if (place_free(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction))) {
		if (irandom(chance_change) = 1) {
			motion_set(irandom(360), random(2));
		}
	} else {
		motion_set(irandom(360), random(2));
	}
} else {
	state = states.attack;
}

