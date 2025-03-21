gravity = 0.5

if (place_meeting(x, y + vspeed, obj_ground)) {
	gravity = 0;
	vspeed = 0;
} else {
	gravity = 0.5;
}





// nie ruszaj
if (keyboard_check(vk_left))
{
	x -= 2
}
else if (keyboard_check(vk_right))
{
	x += 2
}

