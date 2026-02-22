// Set stats
hp = 3;
damage = 1;
vision = 80;
move_speed = 0.7;

target_x = x;
target_y = y;

alarm[0] = 60;
tilemap = layer_tilemap_get_id("Tiles_Walls");

// Knockback
kb_x = 0;
kb_y = 0;

is_attacking = false;