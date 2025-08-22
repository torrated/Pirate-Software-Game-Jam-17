/// @description Timer del Rebote

if (rebote_i <= rebote_max)
{
	rebote_i += 1;
	alarm[0] = 1;
}
else
	rebote_activo = false;