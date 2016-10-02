import java.util.*;
Random generator;

void setup() {
  size(400,400);
  background(255);
  generator = new Random();
}

void draw() {
  float n = (float) generator.nextGaussian();
  float sd = 40;
  float mean = 200;
  
  float x = sd * n + mean;
  
  noStroke();
  fill(0,10);
  ellipse(x,190,20,20);
}