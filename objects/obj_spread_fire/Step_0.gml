/// @description Insert description here
// You can write your code in this editor

if (creator && target && bullet_type && bullet_count && spread){
	var spread_min = point_direction(creator.x, creator.y, target.x, target.y) - spread/2;
	var step = spread / bullet_count;
	
	for (i=0;i<bullet_count;i++) {
		var enemy_bullet = instance_create_layer(creator.x, creator.y, "BulletsLayer", bullet_type);
		enemy_bullet.direction = spread_min + step * i;
		creator.spd -= 2;
	}
	
	instance_destroy();
}