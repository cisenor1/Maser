///getYMove()
inputUp = keyboard_check(ord(key_up)) || keyboard_check(vk_up);
inputDown = keyboard_check(ord(key_down)) || keyboard_check(vk_down);
return -inputUp + inputDown;
