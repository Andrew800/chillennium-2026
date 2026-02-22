// Inherit the parent event
event_inherited();

if (is_attacking == false)
{
	// Set moving and idle sprites
	if (dir_x < 0)
	{
		sprite_index = spr_enemy2_idle_left;
	}
	else
	{
		sprite_index = spr_enemy2_idle_right;
	}
} 