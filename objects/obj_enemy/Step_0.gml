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
if (hp <= 0) instance_destroy();