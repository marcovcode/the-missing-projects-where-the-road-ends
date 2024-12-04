if (is_talking && array_length(lines) > 0) {
	draw_sprite(spr_dialogue_box, 0, room_width / 2, room_height - 5);
	draw_text(13, room_height - 63, current_text);
}