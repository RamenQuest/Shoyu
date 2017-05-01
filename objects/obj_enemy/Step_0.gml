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
		show_debug_message("STATE: ");
		show_debug_message(other.state);
		show_debug_message("SPD: ");
		show_debug_message(other.spd);
		show_debug_message("");
		scr_enemy_attack();
		break;
	case states.search:
		show_debug_message("STATE: ");
		show_debug_message(other.state);
		show_debug_message("SPD: ");
		show_debug_message(other.spd);
		show_debug_message("");
		scr_enemy_search();
		break;
}


// Kill the enemy
if (hp <= 0) instance_destroy();