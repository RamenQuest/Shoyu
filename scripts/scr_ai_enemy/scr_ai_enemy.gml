var chance_change = 20;

if (direction == 0) {
	if (place_free(x + width/speed, y)) {
		image_xscale = 1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(45,90,135,180,225,270,315), 1 + random(3));
	}
} else if (direction == 45) {
	if (place_free(x + width/speed/2, y - width/speed/2)) {
		image_xscale = 1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,90,135,180,225,270,315), 1 + random(3));
	}
} else if (direction == 90) {
	if (place_free(x, y - width/speed)) {
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,135,180,225,270,315), 1 + random(3));
	}
} else if (direction == 135) {
	if (place_free(x - width/speed/2, y - width/speed/2)) {
		image_xscale = -1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,90,180,225,270,315), 1 + random(3));
	}
} else if (direction == 180) {
	if (place_free(x - width/speed, y)) {
		image_xscale = -1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,90,135,225,270,315), 1 + random(3));
	}
} else if (direction == 225) {
	if (place_free(x - width/speed/2, y + width/speed/2)) {
		image_xscale = -1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,90,135,180,270,315), 1 + random(3));
	}
} else if (direction == 270) {
	if (place_free(x, y + width/speed)) {
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,90,135,180,225,315), 1 + random(3));
	}
} else if (direction == 315) {
	if (place_free(x + width/speed/2, y + width/speed/2)) {
		image_xscale = 1;
		if irandom(chance_change) = 1 {
			motion_set(choose(0,45,90,135,180,225,270,315), 1 + random(3));
		}
	} else {
		motion_set(choose(0,45,90,135,180,225,270), 1 + random(3));
	}
}