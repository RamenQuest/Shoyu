/// @description Insert description here
// You can write your code in this editor

/* commenting this out for now - Brandon
 scr_ai_enemy(); 
*/

if (instance_exists(obj_player))
{
	var inst;
	inst = instance_nearest(x, y, obj_player);
	mp_potential_step(inst.x, inst.y, 2, false);
}

image_angle = direction;

// Kill the enemy
if (hp <= 0) instance_destroy();