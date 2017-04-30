/// @description Insert description here
// You can write your code in this editor

/* commenting this out for now - Brandon
 scr_ai_enemy(); 
*/

if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

image_angle = direction;

// Kill the enemy
if (hp <= 0) instance_destroy();