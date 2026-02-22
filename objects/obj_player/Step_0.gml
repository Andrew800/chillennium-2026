if (instance_exists(obj_dialog) == true)
{
	exit;
}

var index = tile_get_index(tilemap_get_at_pixel(ground, x, y))
if (index >= 24)
{
	move_speed *= 0.95
	if (move_speed <= 0.3)
	{
		move_speed = 0.3;
	}
	if (index <= 25)
	{
		hp -= 0.1;
	}
	else if (index == 26)
	{
		hp -= 0.15;
	}
	else
	{
		hp -= 0.2;
	}
}
else
{
	move_speed = true_move_speed;
}
if (hp <= 0)
{
    room_restart();
}

if (is_dashing == false)
{
	// Get movement direction and move
	dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
	dir_y = keyboard_check(vk_down) - keyboard_check(vk_up);
	show_debug_message(dir_x);
	move_and_collide(dir_x * move_speed, dir_y * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

	if (is_attacking == false)
	{
		// Set moving and idle sprites
		if (dir_x != 0 or dir_y != 0)
		{
			if (dir_x > 0)
			{
				sprite_index = spr_player_move_right;
			}
			else if (dir_x < 0)
			{
				sprite_index = spr_player_move_left;
			}
			else if (dir_y > 0)
			{
				sprite_index = spr_player_move_down;
			}
			else if (dir_y < 0)
			{
				sprite_index = spr_player_move_up;
			}
	
		    dir = point_direction(0, 0, dir_x, dir_y);
		}
		else 
		{
			if (sprite_index == spr_player_move_right)
			{
				sprite_index = spr_player_idle_right;
			}
			else if (sprite_index == spr_player_move_left)
			{
				sprite_index = spr_player_idle_left;
			}
			else if (sprite_index = spr_player_move_down)
			{
				sprite_index = spr_player_idle_down;
			}
			else if (sprite_index = spr_player_move_up)
			{
				sprite_index = spr_player_idle_up;
			}
		}
	} 

	// Swing sword swoosh swoosh
	if (keyboard_check(vk_space) == true && is_attacking == false)
	{
		current_sprite = sprite_index;
		is_attacking = true;
		if (sprite_index == spr_player_idle_right or sprite_index == spr_player_move_right)
		{
			sprite_index = spr_player_atk_right;
		}
		else if (sprite_index == spr_player_idle_left or sprite_index == spr_player_move_left)
		{
			sprite_index = spr_player_atk_left;
		}
		else if (sprite_index == spr_player_idle_down or sprite_index == spr_player_move_down)
		{
			sprite_index = spr_player_atk_down;
		}
		else if (sprite_index == spr_player_idle_up or sprite_index == spr_player_move_up)
		{
			sprite_index = spr_player_atk_up;
		}
	}

	// Shield
	if (keyboard_check(ord("1")) == true and can_shield == true and is_shield == false)
	{
		current_sprite = sprite_index;
		can_shield = false;
		alarm[1] = 300;
        is_shielding = true;
		if (sprite_index == spr_player_idle_right or sprite_index == spr_player_move_right or sprite_index == spr_player_atk_right)
		{
			sprite_index = spr_player_shield_right;
		}
		else if (sprite_index == spr_player_idle_left or sprite_index == spr_player_move_left or sprite_index == spr_player_atk_left)
		{
			sprite_index = spr_player_shield_left;
		}
		else if (sprite_index == spr_player_idle_down or sprite_index == spr_player_move_down or sprite_index == spr_player_atk_left)
		{
			sprite_index = spr_player_shield_down;
		}
		else if (sprite_index == spr_player_idle_up or sprite_index == spr_player_move_up or sprite_index == spr_player_atk_up)
		{
			sprite_index = spr_player_shield_up;
		}
		is_shield = true;
	}

	// Dash
	if (keyboard_check(ord("2")) == true and can_dash == true and is_dash == false and is_dashing == false)
	{
		current_sprite = sprite_index;
		can_dash = false;
		alarm[2] = 300;
		is_dashing = true;
		if (sprite_index == spr_player_idle_right or sprite_index == spr_player_move_right or sprite_index == spr_player_atk_right)
		{
			sprite_index = spr_player_speed_right;
		}
		else if (sprite_index == spr_player_idle_left or sprite_index == spr_player_move_left or sprite_index == spr_player_atk_left)
		{
			sprite_index = spr_player_speed_left;
		}
		else if (sprite_index == spr_player_idle_down or sprite_index == spr_player_move_down or sprite_index == spr_player_atk_left)
		{
			sprite_index = spr_player_speed_down;
		}
		else if (sprite_index == spr_player_idle_up or sprite_index == spr_player_move_up or sprite_index == spr_player_atk_up)
		{
			sprite_index = spr_player_speed_up;
		}
		is_dash = true
		true_move_speed *= 3;
		move_speed = true_move_speed;
		alarm[3] = 180;
	}
}