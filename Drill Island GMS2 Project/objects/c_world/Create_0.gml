worldTiles = ds_grid_create(10,1000);

for (var tileX = 0;tileX < ds_grid_width(worldTiles);tileX ++){
	for (var tileY = 0;tileY < ds_grid_height(worldTiles);tileY ++){
		if (tileY < 5){
			ds_grid_set(worldTiles,tileX,tileY,0);
		}
		if (tileY ==5){
			ds_grid_set(worldTiles,tileX,tileY,16);
		}
		if (tileY > 5){
			ds_grid_set(worldTiles,tileX,tileY,32);
		}
	}
}