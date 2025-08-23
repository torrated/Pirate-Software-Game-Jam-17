/// @description 

numero_moscas_golpeadas = 0;

function contar_moscas_golpeadas()
{
	var _lista = ds_list_create();
	var _ordered_by_distance = false;
	numero_moscas_golpeadas = instance_place_list(x,y,obj_mosca,_lista,_ordered_by_distance);
}