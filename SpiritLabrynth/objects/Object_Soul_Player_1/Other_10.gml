//Adjust visuals based on how long the spirit has been in or out of a body.
if (host_ID == id)
{
	if (spirit_sense + 0.1 <= max_spirit_sense)
	{
		spirit_sense += 0.1;
	}
	
	if (physical_sense - 0.1 >= min_physical_sense)
	{
		physical_sense -= 0.1;
	}
}
else
{
	if (spirit_sense - 0.1 >= min_spirit_sense)
	{
		spirit_sense -= 0.1;
	}
	
	if (physical_sense + 0.1 <= max_physical_sense)
	{
		physical_sense += 0.1;
	}
}

var function_set_physical_alpha = function(_array)
{
	if (instance_exists(_array))
	{
		_array.image_alpha = physical_sense/10;
	}
}

var function_set_spirit_alpha = function(_array)
{
	if (instance_exists(_array))
	{
		_array.image_alpha = spirit_sense/10;
	}
}

physical_object_array = tag_get_asset_ids("physical",asset_object);
array_foreach(physical_object_array, function_set_physical_alpha);

spirit_object_array = tag_get_asset_ids("spirit",asset_object);
array_foreach(spirit_object_array,function_set_spirit_alpha);

//loops infinitely
alarm_set(1,30);