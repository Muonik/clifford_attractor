float a = 1.1;
float b = 1.9;
float c = -0.8;
float d = -0.8;
int iterations = 30000;
float colour = 255;
ArrayList<PVector> points = new ArrayList<PVector>();

float x, y, xn, yn;
float scale;

void setup() {
  size(1800,1200);
  background(0);
  //noLoop();
  x = 0; 
  y = 0;
  scale = height / 5.5;
}

void draw() {  
  translate(width/2, height/2);
  stroke(colour);
  //noStroke();
  points.add(new PVector(x, y));
  
  xn = sin(a*y) + c * cos(a*x); 
  yn = sin(b*x) + d * cos(b*y); 
  x = xn;
  y = yn;
  
  //method 0
  beginShape();
  for (PVector v : points) {
    vertex(scale*v.x, scale*v.y);
    if (colour <= 42) colour = 255;
    else colour -= 0.5;
  }
  endShape();
  
  //method 1 (v slow)
  //point(x*scale, y*scale);
  
  //method 2 fixed number of iterations. uncomment noLoop()
  //int i;
  //for(i = 0; i < iterations; i++){
  //  xn = sin(a*y) + c * cos(a*x); 
  //  yn = sin(b*x) + d * cos(b*y); 
  //  x = xn;
  //  y = yn;
    
  //  points.add(new PVector(x, y));
  //  if (i >= 1) {
  //    PVector prev = points.get(i-1);
  //    //line(x*scale, y*scale, scale*prev.x, scale*prev.y);
  //  }
    
  //  point(x*scale, y*scale);
    
  //  if (colour <= 42) colour = 255;
  //  else colour -= 0.5;
  //}
  //print(points);
  
}
