/// @description 

if (obj_juego.estado_es_normal())
{
	if (tiempo_actual > 0)
		tiempo_actual -= 1;
	else
		obj_juego.estado_set_gameover();
}