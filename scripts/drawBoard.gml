///drawBoard()
/*
    Will iterate over every tile on the map and decide whether it will be a wall or a corridor.
*/
for (var i = 0; i < global.boardHeight; i++){ 
  for (var j = 0; j < global.boardWidth; j++){  
      global.boardArray[j,i] = 0;
    } 
}

for (var i = 0; i < global.boardHeight; i++){
  var nowY = i * global.tileSize;
  for (var j = 0; j < global.boardWidth; j++){ 
    var nowX = j * global.tileSize;
    if(decideWall(j,i)){
      instance_create(nowX,nowY, Wall);
      global.boardArray[j,i] = 'w';
    }else{
      instance_create(nowX,nowY, Floor);
      global.boardArray[j,i] = 0;
    }
  }
}
