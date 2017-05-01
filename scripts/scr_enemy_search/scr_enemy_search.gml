var chance_change = 60;

var inst;
inst = instance_nearest(x, y, obj_player);



if (distance_to_object(inst) > 400) {
	show_debug_message("IDLE");
	state = states.idle;
} else if (distance_to_object(inst) > 200) {
	if (place_free(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction))) {
		if (irandom(chance_change) = 1) {
			spd = 10;
			mp_potential_step(inst.x, inst.y, 2, false);
		} else if (irandom(chance_change) = 2) {
			motion_set(irandom(360), random(3)+3);
		}
	} else {
		motion_set(irandom(360), random(3)+2);
	}
} else {
	state = states.attack;
}

