/// @description Insert description here
// You can write your code in this editor
var boost_max_speed = 25;
var boost_move = 20;
var boost_cooldown_set = 120;


if (boost_cooldown < 1) {
	if (right) {
		MaxMoveSpeed = boost_max_speed;
		MoveH += boost_move;
		boost_cooldown = boost_cooldown_set;
	}
	
	if (left) {
		MaxMoveSpeed = boost_max_speed;
		MoveH -= boost_move;
		boost_cooldown = boost_cooldown_set;
	}
	
	if (up) {
		MaxMoveSpeed = boost_max_speed;
		MoveV -= boost_move;
		boost_cooldown = boost_cooldown_set;
	}
	
	if (down) {
		MaxMoveSpeed = boost_max_speed;
		MoveV += boost_move;
		boost_cooldown = boost_cooldown_set;
	}
}