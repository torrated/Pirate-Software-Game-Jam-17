/// @description 

speed = 3;
direction = image_angle + 90;

velocidad_anterior = 0;
velocidad_animacion_anterior = 0;

rebote_activo = false;
rebote_max = 0;
rebote_i = 0;



function Detener()
{
	velocidad_anterior = speed;
	velocidad_animacion_anterior = image_speed;
	
	speed = 0;
	image_speed = 0;
}



function Reanudar()
{
	speed = velocidad_anterior;
	image_speed = velocidad_animacion_anterior;
}



function Rebotar(_rebote)
{
	if !(rebote_activo)
	{
		rebote_activo = true;
		var _x = lengthdir_x(speed,direction);
		var _y = lengthdir_y(speed,direction);
		
		switch(_rebote)
		{
			case TIPO_REBOTE.ARRIBA: _y *= -1; break;
			case TIPO_REBOTE.ABAJO: _y *= -1; break;
			case TIPO_REBOTE.DERECHA: _x *= -1; break;
			case TIPO_REBOTE.IZQUIERDA: _x *= -1; break;
		}
		
		direction = point_direction(x,y,x+_x,y+_y);
		image_angle = direction - 90;
		alarm[0] = 1; // para desactivar rebote_activo al cabo de un tiempo
	}
}