draw_self();

if(flash > 0)
	{
		flash--;
		shader_set (shWithe);
		draw_self();
		shader_reset();
	}

