var creator_id = argument0;

var inst;
inst = instance_nearest(x, y, obj_player);
spd = 3;

if (distance_to_object(inst) <= 300) {
	mp_potential_step(inst.x, inst.y, spd, false);
	
	if (cooldown < 1) {
		switch(irandom(2)) {
			case 1:
				show_debug_message("ATTACK 1");
				burstFire = instance_create_layer(x,y,"BulletsLayer",obj_burst_fire);
				burstFire.creator = creator_id;
				burstFire.target = inst;
				burstFire.bullet_type = obj_bullet_enemy;
				burstFire.burst_count = burst_count;
				burstFire.fire_rate = 1;
				burstFire.canshoot = true;
				break;
			case 2:
				show_debug_message("ATTACK 2");
				break;
		}
		

		cooldown = 60;
	}
	
	cooldown -= 1;
} else {
	state = states.search;
}