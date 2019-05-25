var world_mX = mouse_x;
var world_mY = mouse_y + c_graphics.camY;

var tX = floor(world_mX/16);
var tY = floor((world_mY)/16);

if (ds_grid_get(worldTiles,tX,tY) >= 16){
	var freeTile = false;
	if (tX > 0){
		if (floor(ds_grid_get(worldTiles,tX-1,tY) / 16) == 0 || floor(ds_grid_get(worldTiles,tX-1,tY) / 16) == 3){
			freeTile = true;
		}
	}
	if (tX < 9){
		if (floor(ds_grid_get(worldTiles,tX+1,tY) / 16) == 0 || floor(ds_grid_get(worldTiles,tX+1,tY) / 16) == 3){
			freeTile = true;
		}
	}
	if (floor(ds_grid_get(worldTiles,tX,tY-1) / 16) == 0 || floor(ds_grid_get(worldTiles,tX,tY-1) / 16) == 3){
		freeTile = true;
	}
	if (floor(ds_grid_get(worldTiles,tX,tY+1) / 16) == 0 || floor(ds_grid_get(worldTiles,tX,tY+1) / 16) == 3){
		freeTile = true;
	}
	if (freeTile){
		ds_grid_set(worldTiles,tX,tY,48);
	}
}