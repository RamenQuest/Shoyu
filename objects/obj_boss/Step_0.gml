/// @description Insert description here
// You can write your code in this editor

/* commenting this out for now - Brandon
 scr_ai_enemy(); 
*/

switch (state) {
	case states.attack:
		scr_boss_attack(id);
		break;
}


// Kill the enemy
if (hp <= 0) {
	instance_destroy();
	global.player_score += 100;
}