// Set stats
move_speed = 1.05;
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
can_shield = true;
is_shield = false;
can_dash = true;
is_dashing = false;
is_dash = false;
can_stun = true;
mask_index = spr_player_idle_down;

