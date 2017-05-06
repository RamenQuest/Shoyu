/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(font_score);
draw_text(64, 32, "Score: " + string(global.player_score));

draw_set_color(c_white);
draw_text(64, 64, "Wave: " + string(global.wave));