var creator_id = argument0;

var inst;
inst = instance_nearest(x, y, obj_player);

if (spd < 3) {
	spd += 1;
}

if (distance_to_object(inst) <= 300) {
	mp_potential_step(inst.x, inst.y, spd, false);
	
	if (cooldown < 1) {
		switch(irandom(2)) {
			case 1:
				burstFire = instance_create_layer(x,y,"BulletsLayer",obj_burst_fire);
				burstFire.creator = creator_id;
				burstFire.target = inst;
				burstFire.bullet_type = obj_bullet_enemy;
				burstFire.burst_count = burst_count;
				burstFire.fire_rate = 1;
				burstFire.canshoot = true;
				break;
			case 2:
				spreadFire = instance_create_layer(x,y,"BulletsLayer",obj_spread_fire);
				spreadFire.creator = creator_id;
				spreadFire.target = inst;
				spreadFire.bullet_type = obj_bullet_enemy;
				spreadFire.bullet_count = burst_count;
				spreadFire.spread = 90;
				break;
		}
		

		cooldown = 60;
	}
	
	cooldown -= 1;
} else {
	state = states.search;
}