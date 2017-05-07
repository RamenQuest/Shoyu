/// @description Lifebar

draw_self();

if (hp < maxHp) {
	draw_sprite_stretched(spr_hbar,-1,x-25,y-40,hp/maxHp*48,8);
}

draw_set_colour(c_red);
draw_circle(x, y, 150, true);

draw_set_colour(c_orange);
draw_circle(x, y, 300, true);

draw_set_colour(c_green);
draw_circle(x, y, 500, true);

if (last_seen) {
	draw_set_colour(c_white);
	draw_circle(last_x, last_y, 32, true);
}