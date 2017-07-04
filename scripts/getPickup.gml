//getPickup(rand:number);
var rand = argument0;
// get loot score
var lds = ((rand - (100 - lootDropChance)) / lootDropChance) *100;
if (lds > 50 && lds <= 75){
  return pickup_ammo;
}else if (lds > 25 && lds <= 50){
  return pickup_health; 
}else if (lds > 75 && lds <= 100){
  return pickup_stamina; 
}
