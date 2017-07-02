///DecideWall(x,y)
var currentX = argument0;
var currentY = argument1;

if (currentX == 0 || currentX >= global.boardWidth - 1 || currentY == 0 || currentY >= global.boardHeight -1 ){
  // It's the border
  return true;
}

if (currentX == char_start_x && currentY == char_start_y){
  return false;
}


// is it right next to an existing block?
var neighbors = getNeighborTiles(currentX,currentY);
for (var i = 0; i < array_length_1d(neighbors);i++){
  if (neighbors[i] == 'w'){
    return random(100) > (100 - wallHasNeighborSpawnChance);    
  }
}

return random(100) > (100 - wallHasNoNeighborSpawnChance);
