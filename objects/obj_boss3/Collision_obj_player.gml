// Inherit the parent event
event_inherited();

if (dir_x > 0)
{

	sprite_index = spr_boss3_atk_right;
}
else if (dir_x < 0)
{
	sprite_index = spr_boss3_atk_left;
}
else if (dir_y > 0)
{
	sprite_index = spr_boss3_atk_down;
}
else if (dir_y > 0)
{
	sprite_index = spr_boss3_atk_up;
}
