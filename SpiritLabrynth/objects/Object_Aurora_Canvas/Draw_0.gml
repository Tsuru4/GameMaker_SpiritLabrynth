draw_sprite(Sprite_Canvas_Aurora,0,x,y);
draw_set_font(Font1);
draw_text_colour(x-640,y-64,canvas_message,#FFFF00,#FFFFFF,#00FFFF,#FFFFFF,1);
draw_text_colour(x-640,y-32,canvas_message2,#FFFF00,#FFFFFF,#00FFFF,#FFFFFF,1);
draw_text_colour(x-640,y,canvas_message3,#FFFF00,#FFFFFF,#00FFFF,#FFFFFF,1);
draw_text_colour(x-640,y+32, canvas_input_string,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,1);
draw_text_colour(x+600,y+32, canvas_input_array[canvas_input_index],#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,1);