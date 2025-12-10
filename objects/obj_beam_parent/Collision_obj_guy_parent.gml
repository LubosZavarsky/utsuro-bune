
if (other.hit) exit;      // if this guy already caused score, skip
other.hit = true;


// If both are same type (good-good or bad-bad) → reward
if (is_good == other.is_good) {
    score += 1;
} else {
    score -= 1;
}

// Only if the guy is not in the house
if (!place_meeting(other.x, other.y, obj_house)) {
    
    // BAD BEAM hits (either good or bad guy) → show beam hit sprite on guy
    if (!is_good) { // this is the BEAM's is_good
        if (other.sprite_index != spr_beam_hit) {
            other.sprite_index = spr_beam_hit;
        }
    } 
    // GOOD BEAM → just destroy the guy
    else {
        with (other) instance_destroy();
    }
}
