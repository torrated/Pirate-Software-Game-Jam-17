repeat(20)
{
	CrearMoscaAleatoria();
}



/// @description Crea una mosca en un lugar aleatorio fuera de la mesa
function CrearMoscaAleatoria()
{
	randomize();
	var mosca = instance_create_layer(0,0,"Moscas",obj_mosca);
	
	//se elije en qué borde saldra
	if (choose(0,1) == 0)
	{
		mosca.x = irandom_range(0,room_width);
		mosca.y = choose(0,room_height);
	}
	else
	{
		mosca.x = choose(0,room_width);
		mosca.y = random_range(0,room_height);
	}
	
	if (mosca.x < (room_width/2) && mosca.y < (room_height/2))
	{
		mosca.direction = random_range(-90,0);
		mosca.image_angle = mosca.direction - 90;
	}
	if (mosca.x < (room_width/2) && mosca.y > (room_height/2))
	{
		mosca.direction = random_range(0,90);
		mosca.image_angle = mosca.direction - 90;
	}
	if (mosca.x > (room_width/2) && mosca.y < (room_height/2))
	{
		mosca.direction = random_range(180,270);
		mosca.image_angle = mosca.direction - 90;
	}
	if (mosca.x > (room_width/2) && mosca.y > (room_height/2))
	{
		mosca.direction = random_range(270,360);
		mosca.image_angle = mosca.direction - 90;
	}
	mosca.speed = 3;
}