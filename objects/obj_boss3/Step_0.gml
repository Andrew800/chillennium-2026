// Inherit the parent event
event_inherited();

if (is_attacking == false)
{
	// Set moving and idle sprites
	if (dir_x != 0 or dir_y != 0)
	{
		if (dir_x > 0)
		{
			sprite_index = spr_boss3_move_right;
		}
		else if (dir_x < 0)
		{
			sprite_index = spr_boss3_move_left;
		}
		else if (dir_y > 0)
		{
			sprite_index = spr_boss3_move_down;
		}
		else if (dir_y < 0)
		{
			sprite_index = spr_boss3_move_up;
		}
		dir = point_direction(0, 0, dir_x, dir_y);
	}
}