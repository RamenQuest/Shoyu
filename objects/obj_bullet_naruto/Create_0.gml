/// @description bullet animation

// Set up motion - Aim at cursor
direction = point_direction(x, y, mouse_x, mouse_y);

// Randomize spray
direction = direction + random_range(-12, 12);

// Speed
speed = 8; //16 px per frame
image_angle = direction;