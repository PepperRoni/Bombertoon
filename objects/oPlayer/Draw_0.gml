if(inUseDelayTime == true) draw_self();

if(flash > 0)
{
    flash--;
    shader_set (shWhite);
    draw_self();
    shader_reset();
}
if (inUseDelayTime == false)
{
	if (keyboard_check(ord("A"))) 
	{
		xscale = -1;
	}
	else xscale = 1;
	
	draw_sprite_ext(sprite_index, 0, x, y, xscale, 1, 0, -1, alphaValueWhenStunt % modulusAlpha)
	modulusAlpha -= 0.1;
	
	if(modulusAlpha == 0) modulusAlpha = 1;
}