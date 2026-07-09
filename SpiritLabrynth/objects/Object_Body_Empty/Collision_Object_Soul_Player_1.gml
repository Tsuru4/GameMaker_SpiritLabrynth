is_physical = true;
is_spiritual = false;

possesor_ID = other.id;
other.x = x;
other.y = y;
other.visible = false;
instance_destroy(self,true);