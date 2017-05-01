/// @description Player Update

if x < mouse_x {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

cooldown = cooldown - 1;
boost_cooldown = boost_cooldown -1;


/// Movement
up = (keyboard_check(ord("W")));
left = (keyboard_check(ord("A")));
down = (keyboard_check(ord("S")));
right = (keyboard_check(ord("D")));

// Decelerate H when going faster than normal
if (abs(MoveH) > NormalMoveSpeed || abs(MoveH) > NormalMoveSpeed) {
	show_debug_message(MoveH);
	MaxMoveSpeed -= Accel*3;
} else {
	MoveH += ((-left + right) * Accel);
}

if !left && !right && MoveH != 0
    {
        MoveH -= (Accel * sign(MoveH))
    }

// Decelerate V when going faster than normal
if (abs(MoveV) > NormalMoveSpeed || abs(MoveV) > NormalMoveSpeed) {
	show_debug_message(MoveV);
	MaxMoveSpeed -= Accel*3;
} else {
	MoveV += ((-up + down) * Accel);
}

if !up && !down && MoveV != 0
    {
        MoveV -= (Accel * sign(MoveV))
    }
MoveH = clamp(MoveH,-MaxMoveSpeed,MaxMoveSpeed);
MoveV = clamp(MoveV,-MaxMoveSpeed,MaxMoveSpeed);
x += MoveH;
y += MoveV;

if (hp <= 0) instance_destroy();