// Take damage and kb if not in iFrame
if (alarm[1] < 0 and (other.sprite_index == spr_player_atk_right or other.sprite_index == spr_player_atk_left or other.sprite_index == spr_player_atk_down or other.sprite_index == spr_player_atk_up))
{
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}