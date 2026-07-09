var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_hor != 0 || _ver != 0)
{
	if (velocity <= velocity_cap - 1)
	{
		velocity+= 0.1;
	}
}
else
{
	velocity = 0;
}

move_and_collide(_hor * velocity, _ver * velocity, Object_Wall);