///getNeighborTiles(x,y) 
var currentX = argument0;
var currentY = argument1;
var outArray;
// above 
if (currentY <= 1){
  outArray[0] = "w";
}else{
  outArray[0] = global.boardArray[currentX,currentY-1];
}

// below 
if (currentY >= global.boardHeight-1){
  outArray[1] = "w";
}else{
  outArray[1] = global.boardArray[currentX,currentY+1];
}


// left 
if (currentX <= 1){
  outArray[2] = "w";
}else{
  outArray[2] = global.boardArray[currentX - 1,currentY];
}


// right 
if (currentX >= global.boardWidth-1){
  outArray[3] = "w";
}else{
  outArray[3] = global.boardArray[currentX+1,currentY];
}

return outArray;
