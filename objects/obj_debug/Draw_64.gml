/// @description 

var _color = draw_get_color();

draw_set_color(c_black);
draw_text(10,10,$"Instancias: {instance_count}");

with (obj_mosca)
{
	//draw_text(10,30,$"lengthdir_x: {lengthdir_x(speed,direction)}");
	//draw_text(10,45,$"lengthdir_y: {lengthdir_y(speed,direction)}");
	//draw_text(x,y,$"Rebote activo: {rebote_activo}");
	//draw_text(x,y+15,$"x,y,dir: {direction}");
}

with (obj_sombra)
{
	draw_text(x,y,$"hits: {numero_moscas_golpeadas}");
}

draw_set_color(_color);