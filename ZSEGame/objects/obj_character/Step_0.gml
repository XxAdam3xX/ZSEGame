if (place_meeting(x, y + vspeed, obj_floor)) {
	gravity = 0;
	hspeed = 0;
	vspeed = 0;

	if (keyboard_check(vk_left)) {
		hspeed = -10;
	} else if (keyboard_check(vk_right)) {
		hspeed = 10;
	}
	
	
	
	
	
	

	if (!is_sliding && keyboard_check(vk_down)) {
		is_sliding = true;
		slide_timer = slide_duration;

		// Kierunek ślizgu
		if (keyboard_check(vk_right)) {
			hspeed = 30;
		} else if (keyboard_check(vk_left)) {
			hspeed = -30;
		} else {
			hspeed = 30;
		}
	}
	
	if (is_sliding) {
		slide_timer -= 1;
		
		if (slide_timer <= 0) {
			is_sliding = false;
			hspeed = 0;
		}
	}
	
	
	

	if (keyboard_check(vk_left) && keyboard_check(vk_right)) {
		hspeed = 0
	}
	if (keyboard_check_pressed(vk_space)) {
        vspeed = -10;
	}
	
} else {
	gravity = 0.5;
	//hspeed = clamp(hspeed, -10, 10);
}

if (vspeed > 0 && place_meeting(x, y + sign(vspeed), obj_floor)) {
    while (place_meeting(x, y, obj_floor)) {
        y -= 1;
	}
}

//if (sliding) {
//    slide_timer -= 1;  // Zmniejszamy timer wślizgu

    // Jeśli timer skończył się, zakończ wślizg
//    if (slide_timer <= 0) {
//        sliding = false;  // Dezaktywuj wślizg
//        hspeed = 0;  // Zatrzymaj ruch
//    }
//}
