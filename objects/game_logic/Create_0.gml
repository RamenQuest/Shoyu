/// @description Setup

spawn_timer = 200;
spawn_cooldown = 120;

var spawn_x;
var spawn_y;
var nearest_player;

enum states {
	idle,
	attack,
	search
}