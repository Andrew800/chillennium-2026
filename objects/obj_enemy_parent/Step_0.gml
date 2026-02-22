if (instance_exists(obj_dialog) == true)
{
	exit;
}

// Take kb if attacked
if (alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
}

// Move to target coords
var dir_x = clamp(target_x - x, -1, 1);
var dir_y = clamp(target_y - y, -1, 1);
move_and_collide(dir_x * move_speed, dir_y * move_speed, [tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed);