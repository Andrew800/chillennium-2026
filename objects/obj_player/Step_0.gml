if (instance_exists(obj_dialog == true))
{
	exit;
}

if (sprite_index != spr_player_atk_right and sprite_index != spr_player_atk_left and sprite_index != spr_player_atk_down and sprite_index != spr_player_atk_up)
{
	// Get movement direction and move
	var dir_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var dir_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	move_and_collide(dir_x * move_speed, dir_y * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

	// Set moving and idle sprites
	if (dir_x != 0 or dir_y != 0)
	{
		if (dir_x > 0)
		{
			sprite_index = spr_player_walk_right;
		}
		else if (dir_x < 0)
		{
			sprite_index = spr_player_walk_left;
		}
		else if (dir_y > 0)
		{
			sprite_index = spr_player_walk_down;
		}
		else if (dir_y < 0)
		{
			sprite_index = spr_player_walk_up;
		}
	
	    dir = point_direction(0, 0, dir_x, dir_y);
	}
	else 
	{
		if (sprite_index == spr_player_walk_right)
		{
			sprite_index = spr_player_idle_right;
		}
		else if (sprite_index == spr_player_walk_left)
		{
			sprite_index = spr_player_idle_left;
		}
		else if (sprite_index = spr_player_walk_down)
		{
			sprite_index = spr_player_idle_down;
		}
		else if (sprite_index = spr_player_walk_up)
		{
			sprite_index = spr_player_idle_up;
		}
	}
} 

// Swing sword swoosh swoosh
if (keyboard_check_pressed(vk_space) == true)
{
	current_sprite = sprite_index;
	if (sprite_index == spr_player_idle_right or sprite_index == spr_player_walk_right)
	{
		sprite_index = spr_player_atk_right;
	}
	else if (sprite_index == spr_player_idle_left or sprite_index == spr_player_walk_left)
	{
		sprite_index = spr_player_atk_left;
	}
	else if (sprite_index == spr_player_idle_down or sprite_index == spr_player_walk_down)
	{
		sprite_index = spr_player_atk_down;
	}
	else if (sprite_index == spr_player_idle_up or sprite_index == spr_player_walk_up)
	{
		sprite_index = spr_player_atk_up;
	}
}