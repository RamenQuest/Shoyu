/// @description Insert description here
// You can write your code in this editor

/* commenting this out for now - Brandon
 scr_ai_enemy(); 
*/

switch (state) {
	case states.idle: 
		scr_enemy_idle(); 
		break;
	case states.attack:
		scr_enemy_attack(id);
		break;
	case states.search:
		scr_enemy_search();
		break;
}


// Kill the enemy
if (hp <= 0) {
	if (scr_chance(.8)) {
		if (scr_chance(.3)) {
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_health);
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_boost);
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_spd);
		} else {
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_spd);
		}
		
		if (scr_chance(.5)) {
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_spd);
		}
		
		if (scr_chance(.5)) {
			instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),"Instances",obj_powerup_boost);
		}
	}
	instance_destroy();
	global.player_score += 1;
}