if room == rm_game {
	
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(90,218,"SCORE: "+string(score));		
		//draw_text(20,40,"LIVES: "+string(lives));
		
	//var txt = "SCORE: " + string(score);

	//// rectangle bounds
	//var x1 = 15;
	//var y1 = 15;
	//var x2 = 200;
	//var y2 = 50;

	//// draw rectangle
	//draw_set_color(c_black);
	//draw_rectangle(x1, y1, x2, y2, false);

	//// center point
	//var cx = (x1 + x2) * 0.5;
	//var cy = (y1 + y2) * 0.5;

	//// save current alignment
	//var old_h = draw_get_halign();
	//var old_v = draw_get_valign();

	//// centered text
	//draw_set_color(c_yellow);
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	//draw_text(cx, cy, txt);

	//// restore alignment so other drawing isn't affected
	//draw_set_halign(old_h);
	//draw_set_valign(old_v);



		//if (obj_house.sprite_index == spr_house){
		
		//	for (var _i = 0; _i < lives; _i++) {
		//		draw_sprite(spr_heart, 0, 630 + 24*_i, 610)
		//	}
		//}
		
	if (obj_house.sprite_index == spr_house) {

    // pulsing scale value
    var pulse = 1 + 0.1 * sin(current_time / 100);

    for (var _i = 0; _i < lives; _i++) {
        draw_sprite_ext(
            spr_heart,
            0,
            630 + 24 * _i,
            610,
            pulse,   // x scale
            pulse,   // y scale
            0,       // rotation
            c_white, // color
            1        // alpha
        );
    }
}

		
}