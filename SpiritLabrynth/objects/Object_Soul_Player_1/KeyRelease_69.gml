if (host_ID != id)
{
	instance_destroy(host_ID,true);
	visible = true;
	y -= 64;
	host_ID = id;
}