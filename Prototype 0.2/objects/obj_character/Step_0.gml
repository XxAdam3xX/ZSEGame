if (place_meeting(x, y + vspeed, obj_floor)) {
	gravity = 0;
	vspeed = 0;
	if (keyboard_check_pressed(vk_space)) {
        vspeed = -10; // Siła skoku (możesz dostosować wartość)
    }
} else {
	gravity = 0.5;
}

if (keyboard_check(vk_left))
{
	x -= 2
} else if (keyboard_check(vk_right))
{
	x += 2
}
