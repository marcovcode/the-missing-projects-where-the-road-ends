left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));

speed_x = (right_key - left_key) * movement_speed;

if (place_meeting(x + speed_x, y, obj_collision)) {
	speed_x = 0;
}

x += speed_x;