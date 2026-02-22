var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

// Properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Healthbar
var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(hp_background, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched(hp_bar, 1, _dx, _dy, _health_barw, _barh);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");

// Reset Properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);