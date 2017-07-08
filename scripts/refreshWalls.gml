// RefreshWalls
for (var i = 0; i < instance_number(Wall); i++){
  var w = instance_find(Wall,i);
  with (w){
    visible_index = getWallTileIndex();
    image_index = visible_index;
  }
}
