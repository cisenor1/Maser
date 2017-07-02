///wallHit(wall, damage)
var wall = argument0;
var damage = argument1;
with(wall){ 
    wall.hp -= damage;
  if (wall.hp <= 0){
    instance_destroy(); 
    instance_create(x,y,Floor);
  } 
}

