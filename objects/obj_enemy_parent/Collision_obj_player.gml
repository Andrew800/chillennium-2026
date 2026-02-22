// Take damage and kb if not in iFrame
if (alarm[1] < 0 and other.is_attacking == true)
{
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}