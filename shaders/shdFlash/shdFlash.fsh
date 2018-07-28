//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float alpha;
uniform float red;
//uniform float green;
//uniform float blue;

void main()
{
	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    if (Color.a != 0.0) gl_FragColor = vec4(255, 255, 255, alpha);
}
