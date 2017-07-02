///DecideWall(x,y)
var currentX = argument0;
var currentY = argument1;

if (currentX == 0 || currentX >= global.boardWidth - 1 || currentY == 0 || currentY >= global.boardHeight -1 ){
  // It's the border
  return WallIndestructable;
}

if (instance_exists(Character)){
  var charX = floor(Character.x / global.tileSize);
  var charY = floor(Character.y / global.tileSize);
  if (currentX == floor(charX) && currentY == floor(charY)){
    return Floor;
  }
}



if (currentX == floor(char_start_x) && currentY == floor(char_start_y)){
  return Floor;
}


// is it right next to an existing block?
var neighbors = getNeighborTiles(currentX,currentY);
for (var i = 0; i < array_length_1d(neighbors);i++){
  if (neighbors[i] == 'w'){
    if ( random(100) > (100 - wallHasNeighborSpawnChance)   ){
      return Wall;
    }else{
      return Floor;
    }
  }
}

if(random(100) > (100 - wallHasNoNeighborSpawnChance)){
  return Wall;
}else{
  return Floor;
}
