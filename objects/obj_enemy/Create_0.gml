/// @description First enemy

// Enemy stats
maxHp = 10;
hp = maxHp;
spd = 1;
cooldown = 0;
attack_speed = 5;
burst_count = 5;

attack_degree = round(irandom(360)/90)*90;

image_yscale = -1;

state = states.idle;
last_seen = false;
last_x = x;
last_y = y;