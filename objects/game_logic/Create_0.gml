/// @description Setup
global.player_score = 0;

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