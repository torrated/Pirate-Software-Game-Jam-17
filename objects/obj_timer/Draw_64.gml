/// @description 

var _alpha = draw_get_alpha();
var _color = draw_get_color();
var _halign = draw_get_halign();

draw_set_alpha(0.75);
draw_set_color(c_yellow);
draw_circle(x,y,radio,false);

draw_set_alpha(1);
draw_set_color(c_black);
var _angulo = 360*(tiempo_actual/tiempo_maximo);
var _x = radio * cos(degtorad(_angulo-90));
var _y = radio * sin(degtorad(_angulo-90));
draw_arrow(x,y,x+_x,y+_y,grosor_flecha);

draw_set_halign(fa_center);
draw_text(x,y,ceil(tiempo_actual/60));

draw_set_alpha(_alpha);
draw_set_color(_color);
draw_set_halign(_halign);