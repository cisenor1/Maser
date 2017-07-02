//getPickup(rand:number);
var rand = argument0;
// get loot score
var lds = ((rand - (100 - lootDropChance)) / lootDropChance) *100;
if (lds > 50){
  return pickup_ammo;
}else{
  return pickup_health;
}
