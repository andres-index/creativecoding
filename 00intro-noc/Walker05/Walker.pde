import java.util.*;

class Walker {
  
  Random generator;
  float x, y;
  
  Walker() {
    x = width/2;
    y = height/2;
    generator = new Random();
  }
  
  void step() {
    float nX = (float) generator.nextGaussian();
    float nY = (float) generator.nextGaussian();
    
    x += nX;
    y += nY;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
}