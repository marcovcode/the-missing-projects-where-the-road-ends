interact_key = keyboard_check_pressed(ord("E"));

if (place_meeting(x, y, obj_player) && interact_key && !is_transitioning && is_enabled) {
	is_transitioning = true;
	
	transition = instance_create_depth(0, 0, -999, obj_transition);
	transition.target_room = target_room;
	transition.target_x = target_x;
	transition.target_y = target_y;
}