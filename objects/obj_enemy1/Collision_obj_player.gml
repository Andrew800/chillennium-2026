if (alarm[1] < 0 and other.is_attacking == true)
{
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}

if (dir_x < 0)
{
	if (obj_game.phase2 == false)
	{
		sprite_index = spr_enemy1_atk_left_miss;
	}
	else
	{
		sprite_index = spr_enemy1_atk_left;
	}
}
else
{
	if (obj_game.phase2 == false)
	{
		sprite_index = spr_enemy1_atk_right_miss;
	}
	else
	{
		sprite_index = spr_enemy1_right_left;
	}
}
