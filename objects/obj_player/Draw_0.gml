/// @description Insert description here
// You can write your code in this editor

draw_self();

// Health bar
draw_sprite_stretched(spr_hbar,-1,x-25,y-40,hp/maxHp*48,8);

// Cooldown bar
draw_sprite_stretched(spr_cbar,-1,x-25,y+40,boost_cooldown/120*48,8);

draw_set_colour(c_blue);
draw_circle(x, y, 200, true);