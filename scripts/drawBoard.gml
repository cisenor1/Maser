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
    var tile = decideWall(j,i);
    instance_create(nowX,nowY,tile);
    
    if(tile == Wall){ 
      global.boardArray[j,i] = 'w';
    }else{
      global.boardArray[j,i] = 0;
    }
  }
} 


var totalEnemiesOnBoard = 0;
while (totalEnemiesOnBoard <= totalEnemies){
    for (var i = 0; i < global.boardHeight; i++){
      for (var j = 0; j< global.boardWidth; j++){
        if (global.boardArray[j,i] == 0){ 
          var enemyHereChance = random(100);
          if (rollChance(enemySpawnChance) && totalEnemiesOnBoard <= totalEnemies){
            instance_create(j * global.tileSize, i * global.tileSize,getRandomEnemy(1));
            totalEnemiesOnBoard++;
          }
        }
      }
    }
}
