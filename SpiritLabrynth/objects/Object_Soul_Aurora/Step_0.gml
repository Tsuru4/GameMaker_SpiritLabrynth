//During normal gameplay, Aurora should follow the player around.
//If the player moves to far away, Aurora should wait patiently at first, then slowly become more anxious as time and distance pass.
if (casual == 0)
{

	//calculate distance
	x_distance = x - friend_ID.x;
	y_distance = y - friend_ID.y;
	total_distance = sqrt(sqr(x_distance) + sqr(y_distance));


	//calculate anxiety
	if (total_distance > 256 && aurora_separation_anxiety < 25600)
	{
		aurora_separation_anxiety += total_distance*.1;
	}
	else
	{
		if (total_distance < aurora_separation_anxiety * 2)
		{
			aurora_separation_anxiety -= 8;
			//This ensures that aurora's max movement is 64 but reduces to aprox 2.56 as she catches up.
		}
		if (total_distance <= 64)
		{
			aurora_separation_anxiety = 0;
			//To actually eliminate her anxiety below 256, the player needs to actively approach her.
		}
	}

	//calclualate movement
	if (aurora_separation_anxiety > 64 && total_distance > 128)
	{
		if (x_distance > 2)
		{
			x -= 0.001 * aurora_separation_anxiety;
		}
		else if (x_distance < -2)
		{
			x += 0.001 * aurora_separation_anxiety;
		}
	
		if (y_distance > 2)
		{
			y -= 0.001 * aurora_separation_anxiety;
		}
		else if (y_distance < -2)
		{
			y += 0.001 * aurora_separation_anxiety;
		}
	}
}