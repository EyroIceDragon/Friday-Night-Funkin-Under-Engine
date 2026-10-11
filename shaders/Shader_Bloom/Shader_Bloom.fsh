varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float brightness;
uniform float size;

void main()
{
    vec2 uv = v_vTexcoord;
    vec4 color = texture2D(gm_BaseTexture, uv);
    vec4 bloom = color;
    
    if (brightness <= 1.0 && size == 0.0) {
        gl_FragColor = color * v_vColour;
        return;
    }
    
    float texWidth = 1280.0;
    float texHeight = 720.0;
    float totalIterations = 0.0;
    
    // 水平方向
    for (float i = 1.0; i <= 4.0; i += 1.0) {
        float dist = i / 4.0;
        vec2 sampleUV = uv + vec2(size * dist / texHeight, 0.0);
        if (sampleUV.x >= 0.0 && sampleUV.x <= 1.0) {
            bloom += texture2D(gm_BaseTexture, sampleUV);
            totalIterations += 1.0;
        }
    }
    
    // 垂直方向
    for (float i = 1.0; i <= 4.0; i += 1.0) {
        float dist = i / 4.0;
        vec2 sampleUV = uv + vec2(0.0, size * dist / texWidth);
        if (sampleUV.y >= 0.0 && sampleUV.y <= 1.0) {
            bloom += texture2D(gm_BaseTexture, sampleUV);
            totalIterations += 1.0;
        }
    }
    
    
    if (totalIterations > 0.0) {
        float brightnessFactor = 1.0 - (1.0 / totalIterations);
        bloom /= totalIterations;
        
        float brightnessApply = max(brightness, 1.0) - 1.0;
        brightnessApply = brightnessApply * 2.0;
        if (brightness < 1.0) brightnessApply = 0.0;
        
        vec4 finalColor = color + ((bloom * brightnessFactor) * brightnessApply);
        finalColor = min(finalColor, 1.0);
        gl_FragColor = finalColor * v_vColour;
    } else {
        gl_FragColor = color * v_vColour;
    }
}