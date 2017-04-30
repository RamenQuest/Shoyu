/// @description Attack

if (cooldown < 1)
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet_naruto)
	cooldown = attack_speed;
}