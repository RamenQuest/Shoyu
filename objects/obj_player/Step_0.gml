/// @description Player Update

if x < mouse_x {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

cooldown = cooldown - 1;


/// Movement
up = (keyboard_check(ord("W")));
left = (keyboard_check(ord("A")));
down = (keyboard_check(ord("S")));
right = (keyboard_check(ord("D")));

//MoveH = ((-left + right) * MoveSpeed);
MoveH += ((-left + right) * Accel);
if !left && !right && MoveH != 0
    {
        MoveH -= (Accel * sign(MoveH))
    }
MoveV += ((-up + down) * Accel);
if !up && !down && MoveV != 0
    {
        MoveV -= (Accel * sign(MoveV))
    }
MoveH = clamp(MoveH,-MoveSpeed,MoveSpeed);
MoveV = clamp(MoveV,-MoveSpeed,MoveSpeed);
x += MoveH;
y += MoveV;


if (hp <= 0) instance_destroy();