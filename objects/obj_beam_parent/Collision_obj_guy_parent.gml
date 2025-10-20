// If both are same type (good-good or bad-bad) → reward
if (is_good == other.is_good) {
    //global.score += 1;
} 
// If different (good vs bad) → penalty
else {
    //global.score -= 1;
}

// Destroy the guy on hit
with (other) {

	if (sprite_index != spr_beam_hit) sprite_index = spr_beam_hit;

} 
