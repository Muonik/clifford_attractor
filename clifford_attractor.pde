// ref https://www.openprocessing.org/sketch/141352/ 

float a = 1.5;
float b = 1.7;
float c = -0.8;
float d = 0.68;
int iterations = 30000;
float colour = 255;

float x, y, xn, yn;
float scale;

void setup() {
  size(1800,1200);
  background(0);
  frameRate(12);
  smooth();
  x = 0; //initual value doesnt matter?
  y = 0;
  scale = height / 5.5;
}

void draw() {  
  translate(width/2, height/2);
  stroke(colour);
  
  int i;
  for(i = 0; i < iterations; i++){
    xn = sin(a*y) + c * cos(a*x); 
    yn = sin(b*x) + d * cos(b*y); 
    x = xn;
    y = yn;
    
    point(x*scale, y*scale);
    //ellipse(x*scale, y*scale, 2, 2);
    
    if (colour <= 42) colour = 255;
    else colour -= 0.5;
  }
}
