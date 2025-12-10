// Movement
var _move = keyboard_check(vk_right) - keyboard_check(vk_left);

if (!is_dead) {

	if (_move == 0) {
    if (sprite_index != spr_ufo_blink) {
        sprite_index = spr_ufo;
    }

    // Handle blinking
    blink_timer -= 1;
    if (blink_timer <= 0) {
        sprite_index = spr_ufo_blink;
        //image_speed = 1; // Play the blink animation normally
        blink_timer = irandom_range(90, 240); // Next blink after 1.5–4 seconds (adjust as you like)
    }

    // If blink animation finished, go back to normal
    if (sprite_index == spr_ufo_blink && image_index >= sprite_get_number(spr_ufo_blink) - 1) {
		
        if (irandom(100) < 30) { 
            // 30% chance to blink again immediately
            image_index = 0; 
            // blink_timer NOT reset here! it continues blinking
        } else {
            sprite_index = spr_ufo;
            blink_timer = irandom_range(90, 240); // New timer after normal blink
        }
        
    }
	}
	else if (_move > 0) {
	    // Moving right
	    x += move_speed;
	    sprite_index = spr_ufo_right;
	}
	else if (_move < 0) {
	    // Moving left
	    x -= move_speed;
	    sprite_index = spr_ufo_left;
	}


	// Keep ufo in the room
	x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2); 
	//y= clamp(y,0,room_height);


	// Shooting
	if (keyboard_check_pressed(ord("X"))) {
	
			if (!instance_exists(obj_beam_good)) {
			//audio_play_sound(snd_beam, 1, false);
			instance_create_layer(x, y, "ufo_layer", obj_beam_good);
		
		}

	};

	if (keyboard_check_pressed(ord("C"))) {
	
			if (!instance_exists(obj_beam_bad)) {
			//audio_play_sound(snd_beam, 1, false);
			instance_create_layer(x, y, "ufo_layer", obj_beam_bad);
		
		}

	}
	
}

if (lives <= 0 && !is_dead) {
	
    is_dead = true;
    sprite_index = spr_ufo_death;
    image_index = 0;
    image_speed = 1;
	
	alarm[2] = 60*2;
}












