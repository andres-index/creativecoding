float t = 0;
float y = t;

void setup() {
  size(200,200);
  background(255);
}

void draw() {
  float x = map(noise(t),0,1,0,width);
  float r = map(noise(t),0,1,0,255);
  
  stroke(r,0,0);
  point(x,y);
  
  t += 0.01;
  y = t;
}