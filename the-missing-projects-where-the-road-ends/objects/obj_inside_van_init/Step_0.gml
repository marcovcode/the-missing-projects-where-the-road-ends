// change dialouges
if (load_int_or_bool("StoryProgress", "has_checked_last_package_address")) {
	inst_driver_seat_dialogue_trigger.lines = [];
}

// change story progress
if (inst_last_package_dialogue_trigger.is_talking) {
	save_int_or_bool("StoryProgress", "has_checked_last_package_address", true);
}