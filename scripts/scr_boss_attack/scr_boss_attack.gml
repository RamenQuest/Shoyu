var creator_id = argument0;

var inst;
inst = instance_nearest(x, y, obj_player);

if (spd < 5) {
	spd += 1;
}

var chage_change = irandom(120);
if (chage_change == 1) {
	attack_degree = round(irandom(360)/90)*90;
}
	
var moveto_x = inst.x + lengthdir_x(100 + irandom(200), attack_degree);
var moveto_y = inst.y + lengthdir_y(100 + irandom(200), attack_degree);			
if (place_free(moveto_x, moveto_y) && moveto_x > 0 && moveto_x < room_width && moveto_y > 0 && moveto_y < room_height) {
	mp_potential_step(moveto_x, moveto_y, spd, false);
} else {
	mp_potential_step(inst.x, inst.y, spd, false);
}
	
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
		

	cooldown = irandom(30) + 30;
}
	
cooldown -= 1;