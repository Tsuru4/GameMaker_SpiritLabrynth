is_physical = true;
is_spiritual = false;//I'll leave it like this for now, since the spirit is a seperate entity in this game.

move_speed = 1;

velocity = 0;

velocity_cap = 3;

//In theory, this value is not actually used, as the object responsible for creating (the empty body's destruction sequence) it will immediately follow up by changing its value.
//But a value should be assigned, so I will use self as the default value.
host_ID = id;