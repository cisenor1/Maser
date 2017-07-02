///getXMove()
var inputLeft,inputRight;
inputLeft = keyboard_check(ord(key_left)) || keyboard_check(vk_left);
inputRight = keyboard_check(ord(key_right)) || keyboard_check(vk_right);


return -inputLeft + inputRight;
