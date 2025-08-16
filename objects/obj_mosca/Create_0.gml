/// @description 

speed = 3;
direction = image_angle + 90;

velocidad_anterior = 0;
velocidad_animacion_anterior = 0;



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