// Take damage if not in iFrame; die if no hp
if (alarm[0] < 0)
{
    hp -= other.damage;
    alarm[0] = 120;
    image_blend = c_red;
    
    if (hp <= 0)
    {
        room_restart();
    }
}