// Set stats
move_speed = 1;
hp = 10;
hp_total = hp;
damage = 1;

// Get collision layer
tilemap = layer_tilemap_get_id("Tiles_Walls");

// Set facing direction (for attacking)
dir = 0;

mask_index = spr_player_idle_down;