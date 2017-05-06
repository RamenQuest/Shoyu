/// @description First enemy

// Enemy stats
maxHp = 50;
hp = maxHp;
spd = 6;
cooldown = 0;
attack_speed = 8;
burst_count = 8;

attack_degree = round(irandom(360)/90)*90;

image_yscale = -1;

state = states.attack;