// save checked package address
if (inst_last_package_dialogue_trigger.is_talking) {
	save_int_or_bool("StoryProgress", "has_checked_last_package_address", true);
}

// change driver seat dialogue
has_checked_last_package_address = load_int_or_bool("StoryProgress", "has_checked_last_package_address");
if (has_checked_last_package_address) {
	inst_driver_seat_dialogue_trigger.lines = [];
}

// change room
if (inst_driver_seat_dialogue_trigger.is_talking && has_checked_last_package_address && !is_transitioning) {
	is_transitioning = true;
	
	transition = instance_create_depth(0, 0, -999, obj_transition);
	transition.target_room = rm_town;
	transition.target_x = 100;
	transition.target_y = 100;
}