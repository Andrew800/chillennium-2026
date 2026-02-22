// Set stats
move_speed = 1;
hp = 10;
hp_total = hp;
damage = 1;

// Get collision layer
tilemap = layer_tilemap_get_id("Tiles_Walls");

// Set facing direction (for attacking)
dir = 0;

level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{
    xp += _xp_to_add
    if (xp >= xp_require)
    {
        level++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;
    }
}

mask_index = spr_player_idle_down;