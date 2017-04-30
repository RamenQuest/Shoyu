var inst;
inst = instance_nearest(x, y, obj_player);

if (distance_to_object(inst) < 200) {
	mp_potential_step(inst.x, inst.y, 2, false);
} else {
	state = states.idle;
}