/// @description 

enum ESTADOS_JUEGO
{
	NORMAL,
	PAUSA,
	GAME_OVER,
	COMPLETE
}

estado = ESTADOS_JUEGO.NORMAL;

cursor_sprite = spr_sombra;










function estado_es_pausa()
{
	return (estado == ESTADOS_JUEGO.PAUSA);
}


function estado_set_normal()
{
	estado = ESTADOS_JUEGO.NORMAL;
	with (obj_pause)
	{
		instance_destroy(self,true);
	}
	with (obj_mosca)
	{
		Reanudar();
	}
}


function estado_set_pausa()
{
	estado = ESTADOS_JUEGO.PAUSA;
	var _pause = instance_create_layer(x,y,layer,obj_pause);
	with (obj_mosca)
	{
		Detener();
	}
}