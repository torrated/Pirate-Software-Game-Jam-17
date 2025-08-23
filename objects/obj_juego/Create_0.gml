/// @description 

enum ESTADOS_JUEGO
{
	NORMAL,
	PAUSA,
	GAME_OVER,
	COMPLETE,
	GOLPEAR
}

estado = ESTADOS_JUEGO.NORMAL;
cursor_set_sombra();



function estado_es_pausa()
{
	return (estado == ESTADOS_JUEGO.PAUSA);
}

function estado_es_normal()
{
	return (estado == ESTADOS_JUEGO.NORMAL);
}


function estado_set_normal()
{
	estado = ESTADOS_JUEGO.NORMAL;
	cursor_set_sombra();
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
	cursor_disable_sombra();
	with (obj_mosca)
	{
		Detener();
	}
}


function estado_set_golpear()
{
	estado = ESTADOS_JUEGO.GOLPEAR;
	var _hit = instance_create_layer(x,y,layer,obj_hit);
	var _sombra = instance_create_layer(mouse_x,mouse_y,layer,obj_sombra);
	_sombra.contar_moscas_golpeadas();
	_sombra.matar_moscas();
	
	cursor_disable_sombra();
	
	with (obj_mosca)
	{
		Detener();
	}
}


function cursor_set_sombra()
{
	window_set_cursor(cr_none);
	cursor_sprite = spr_sombra;
}


function cursor_disable_sombra()
{
	cursor_sprite = -1;
	window_set_cursor(cr_default);
}