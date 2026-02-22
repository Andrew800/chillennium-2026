// Set stats
move_speed = 1.2;
true_move_speed = move_speed;
hp = 30;
hp_total = hp;
damage = 1;

// Get collision layer
tilemap = layer_tilemap_get_id("Tiles_Walls");
ground = layer_tilemap_get_id("Tiles_Floor");

// Set facing direction (for attacking)
dir = 0;

is_attacking = false;
