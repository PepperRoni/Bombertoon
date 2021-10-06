if(inUseDelayTime2 == true) draw_self();

if(flash > 0)
	{
		flash--;
		shader_set (shWhite);
		draw_self();
		shader_reset();
	}
if (inUseDelayTime2 == false)
{
	if (keyboard_check(vk_left)) 
	{
		xscale = -1;
	}
	else xscale = 1;
	
	draw_sprite_ext(sprite_index, 0, x, y, xscale, 1, 0, -1, alphaValueWhenStunt % modulusAlpha)
	modulusAlpha -= 0.1;
	
	if(modulusAlpha == 0) modulusAlpha = 1;
}