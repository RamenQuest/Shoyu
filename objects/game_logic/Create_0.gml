/// @description Setup
global.player_score = 0;
global.wave = 1;

spawn_timer = 200;
spawn_cooldown = 120;
spawn_count = 5;
boss_count = 1;

var spawn_x;
var spawn_y;
var nearest_player;

enum states {
	idle,
	attack,
	search
}