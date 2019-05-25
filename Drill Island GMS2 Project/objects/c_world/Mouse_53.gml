var world_mX = mouse_x;
var world_mY = mouse_y + c_graphics.camY;

var tX = floor(world_mX/16);
var tY = floor((world_mY)/16);

if (ds_grid_get(worldTiles,tX,tY) >= 16){
	ds_grid_set(worldTiles,tX,tY,48);
}