/// CanSee(seer, target, obstacleType):boolean;
var seer = argument0;
var target = argument1;
var obstacleType = argument2;

return !collision_line(seer.x,seer.y, target.x,target.y, obstacleType, false, true); 
 
