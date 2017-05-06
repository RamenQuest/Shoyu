/// @description Insert description here
// You can write your code in this editor

image_alpha = decay/base_decay;

decay -= 1;
if (decay < 1) {
	instance_destroy();
}