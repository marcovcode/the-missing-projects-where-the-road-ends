if (image_index <= 0) {
	if (room != target_room) {
		obj_player.can_move = true;

		obj_player.x = target_x;
		obj_player.y = target_y;

		room_goto(target_room);
	} else {
		instance_destroy();
	}
}