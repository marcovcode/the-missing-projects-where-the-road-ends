// save checked package address
if (inst_last_package_dialogue_trigger.is_talking) {
	save_int_or_bool("StoryProgress", "has_checked_last_package_address", true);
}

// change driver seat dialogue and enable warp
has_checked_last_package_address = load_int_or_bool("StoryProgress", "has_checked_last_package_address");
if (has_checked_last_package_address) {
	inst_driver_seat_dialogue_trigger.lines = [];
	inst_town_warp.is_enabled = true;
}