if (sprite_index == spr_ufo_death) {
    sprite_index = spr_ufo_dead;
    image_speed = 0; // stop any animation on the static 'dead' sprite
    alarm[0] = 60 * 2; // end game in 2 seconds
}