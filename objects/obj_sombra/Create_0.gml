/// @description 

numero_moscas_golpeadas = 0;
lista = ds_list_create();

function contar_moscas_golpeadas()
{
	var _ordered_by_distance = false;
	numero_moscas_golpeadas = instance_place_list(x,y,obj_mosca,lista,_ordered_by_distance);
}

function matar_moscas()
{
	if (numero_moscas_golpeadas > 0)
	{
	    for (var _i = 0; _i < numero_moscas_golpeadas; _i++)
	    {
			lista[| _i].cambiar_sprite_a_muerte();
	    }
	}
}