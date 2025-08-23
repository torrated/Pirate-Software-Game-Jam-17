/// @description Pause

if (estado_es_pausa())
	estado_set_normal();
else if (estado_es_normal())
	estado_set_pausa();
	