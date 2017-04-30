/// @description Face mouse

if x < mouse_x {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

// Shoot
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet_naruto)
	cooldown = 10;
}

cooldown = cooldown - 1;