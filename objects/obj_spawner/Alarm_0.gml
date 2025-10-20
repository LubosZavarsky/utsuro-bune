var _guy_to_create = choose(obj_guy_good, obj_guy_bad);
var _guy_created = instance_create_layer(x, y, "Instances", _guy_to_create);


show_debug_message(_guy_created)
if (_guy_created.move_randomly > 0) instance_create_depth(717, 650, 1, obj_portal);

alarm[0] = spawn_time;



