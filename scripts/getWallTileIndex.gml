/// getWallTileIndex
var offset  = global.tileSize;
var t_ul    = place_meeting(x - offset  ,y - offset ,Wall);
var t_u     = place_meeting(x           ,y - offset ,Wall);
var t_ur    = place_meeting(x + offset  ,y - offset ,Wall);
var t_cl    = place_meeting(x - offset  ,y          ,Wall);
var t_c     = place_meeting(x           ,y          ,Wall);
var t_cr    = place_meeting(x + offset  ,y          ,Wall);
var t_ll    = place_meeting(x - offset  ,y + offset ,Wall);
var t_lc    = place_meeting(x           ,y + offset ,Wall);
var t_lr    = place_meeting(x + offset  ,y + offset ,Wall);

if (t_u){
    // up
   if (t_cr){
    // up && right
    if (t_lc){
        // up && right && down
      if (t_cl){
        // up && right && down && left
        return 4;
      }else{
        // up && right && below && !left
        return 3;
      }
    }else{
      if (t_cl){
      // up && right && !below && left
        return 7;
      }else{
        // up && right && !below && !left
        return 6;
      }
    }
  }else{ 
    // up && !right
    if (t_lc){
      // up && !right && below
      if (t_cl){
      // up && !right && below && left
        return 5;
      }else{
      // up && !right && below && !left
        return 10;
      }
    }else{
      // up && !right && !below
      if (t_cl){
      // up && !right && !below && left
        return 8;
      }else{
      // up && !right && !below && !left
        return 9;
      }
    }
  }
}else{
  // !up 
  if (t_cr){
    // !up && right
    if (t_lc){
        // !up && right && down
      if (t_cl){
        // !up && right && down && left
        return 1;
      }else{
        // !up && right && below && !left
        return 0;
      }
    }else{
      if (t_cl){
      // !up && right && !below && left
        return 13;
      }else{
        // !up && right && !below && !left
        return 12;
      }
    }
  }else{ 
    // !up && !right
    if (t_lc){
      // !up && !right && below
      if (t_cl){
      // !up && !right && below && left
        return 2;
      }else{
      // !up && !right && below && !left
        return 11;
      }
    }else{
      // !up && !right && !below
      if (t_cl){
      // !up && !right && !below && left
        return 14;
      }else{
      // !up && !right && !below && !left
        return 15;
      }
    }
  }
}
