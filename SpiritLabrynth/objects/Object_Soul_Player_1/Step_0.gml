if (host_ID == id)
{
	var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	if (_hor != 0 || _ver != 0)
	{
		if (velocity <= velocity_cap - 0.1)
		{
			velocity += 0.1;
		}
		//technically, tilemap has not been defined yet, so there is nothing to collide with yet.
		move_and_collide(_hor * velocity, _ver * velocity, []);
	}
	else
	{
	velocity = 0;
	}
}
else
{
	if (instance_exists(host_ID))
	{
	x = host_ID.x;
	y = host_ID.y;
	}
	else
	{
		host_ID = id;
		visible = true;
	}
}