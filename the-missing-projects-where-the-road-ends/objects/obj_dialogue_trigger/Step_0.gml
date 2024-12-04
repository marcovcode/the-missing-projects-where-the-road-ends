interact_key = keyboard_check_pressed(ord("E"));

if (interact_key || auto_trigger) {
    if (is_talking) {
        if (array_length(lines) > 0) {
            if (current_char <= string_length(lines[current_line].text)) {
                if (lines[current_line].speaker != "") {
                    current_text = lines[current_line].speaker + ": " + lines[current_line].text;
                } else {
                    current_text = lines[current_line].text;
                }
                current_char = string_length(lines[current_line].text) + 1;
            } else if (current_line + 1 < array_length(lines)) {
                current_text = "";
                current_char = 1;
                current_line++;
            } else {
                current_text = "";
                current_line = 0;
                current_char = 1;
                obj_player.can_move = true;
                is_talking = false;
            }
        } else {
            // Array is empty, do nothing but stay in is_talking state
            current_text = "";
        }
    } else if (place_meeting(x, y, obj_player) || auto_trigger) {
        auto_trigger = false;
        obj_player.can_move = false;
        is_talking = true;
    }
}

if (is_talking && array_length(lines) > 0) {
    if (current_char <= string_length(lines[current_line].text)) {
        if (typing_timer <= 0) {
            if (lines[current_line].speaker != "") {
                current_text = lines[current_line].speaker + ": " + string_copy(lines[current_line].text, 1, current_char);
            } else {
                current_text = string_copy(lines[current_line].text, 1, current_char);
            }
            current_char++;
            typing_timer = typing_delay;
        } else {
            typing_timer--;
        }
    }
}
