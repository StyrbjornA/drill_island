var startHeight = floor(camX/16)-1;
var endHeight = floor((camX+room_height)/16)+1;

for (var tileX = 0; tileX < ds_grid_width(c_world.worldTiles);tileX++){
	for (var tileY = 0; tileY < ds_grid_height(c_world.worldTiles);tileY++){
		var spriteX = ds_grid_get(c_world.worldTiles,tileX,tileY) % 16;
		var spriteY = floor(ds_grid_get(c_world.worldTiles,tileX,tileY) / 16);
		
		draw_sprite_part(s_tiles,0,spriteX*16,spriteY*16,16,16,tileX*16,tileY*16-camY);
	}
}