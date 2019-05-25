draw_set_color(c_green);
draw_rectangle(GUI_x,GUI_y,GUI_x + GUI_width,GUI_y + GUI_height,0);
var world_mX = mouse_x;
var world_mY = mouse_y + c_graphics.camY;

var mX = floor(world_mX/16)*16;
var mY = floor((world_mY)/16)*16 - c_graphics.camY;

draw_rectangle(mX,mY,mX + 16,mY + 16,1);