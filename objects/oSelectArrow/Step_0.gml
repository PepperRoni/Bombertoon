left = keyboard_check_released(vk_left);
right = keyboard_check_released(vk_right);

if (left)
{
	arrowSelectorMovement -= 1;
	if(arrowSelectorMovement == 0) arrowSelectorMovement = 5;
	
}
if (right)
{
	arrowSelectorMovement += 1;
	if(arrowSelectorMovement == 6) arrowSelectorMovement = 1;
	
}
	switch (arrowSelectorMovement)
	{	
	case 1:
	x = Map1.x;
	y = Map1.y - 50;
	if(keyboard_check(vk_enter)) room_goto(Nia)
	break;
	case 2:
	x = Map2.x;
	y = Map2.y - 50;
	if(keyboard_check(vk_enter)) room_goto(Jacob)
	break;
	case 3:
	x = Map3.x;
	y = Map3.y - 50;
	if(keyboard_check(vk_enter)) room_goto(Astrid)
	break;
	case 4:
	x = Map4.x;
	y = Map4.y - 50;
	if(keyboard_check(vk_enter)) room_goto(Olivia)
	break;
	case 5:
	x = Map5.x;
	y = Map5.y - 50;
	if(keyboard_check(vk_enter)) room_goto(Luis)
	break;
	}
	
