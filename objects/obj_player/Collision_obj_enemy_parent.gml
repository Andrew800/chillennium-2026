// Take damage if not in iFrame; die if no hp
if (alarm[0] < 0)
{
	if (is_shield == true)
	{
		is_shield = false;
	}
	else
	{
		if (other.object_index != obj_enemy1 or obj_game.phase2 == true)
		{
			hp -= other.damage;
			image_blend = c_red;
		}
	}
    alarm[0] = 60;
    
    if (hp <= 0)
    {
        room_restart();
    }
}