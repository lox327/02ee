objPlayer.flash -= 0.07;
shader_set(shdFlash);
shd_alpha = shader_get_uniform(shdFlash, "alpha");
shader_set_uniform_f(shd_alpha, flash);

draw_self();

shader_reset();	