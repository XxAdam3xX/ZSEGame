/*if (vsp > 0) {
    vsp = 0;
    on_ground = true;
}
// Ruch i kolizje
if (!place_meeting(x + hsp, y, obj_ground)) {
    x += hsp;
}

if (!place_meeting(x, y + vsp, obj_ground)) {
    y += vsp;
} else {
    vsp = 0;
}
// Grawitacja
vsp += gravity;
if (vsp > max_fall_speed) vsp = max_fall_speed;

// Sprawdzanie, czy postać jest na ziemi
if (place_meeting(x, y + 1, obj_ground)) {
    on_ground = true;
    is_sliding = false; // Zatrzymujemy ślizganie po wylądowaniu
} else {
    on_ground = false;
}
*/
