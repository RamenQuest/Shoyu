/// @description Insert description here
// You can write your code in this editor
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