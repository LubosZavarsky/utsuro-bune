event_inherited();

if (sprite_index != spr_beam_hit) {
	sprite_index = (move_randomly > 0) ? spr_guy_good_right : spr_guy_good_left;
}