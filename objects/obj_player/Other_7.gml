// Return to previous sprite after attack animation
if (is_attacking == true)
{
	sprite_index = current_sprite;
	is_attacking = false;
}

if (is_dashing == true)
{
	sprite_index = current_sprite;
	is_dashing = false;
}