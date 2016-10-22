
class Walker {
  
  float x,y,tx,ty;
  
  Walker() {    
    tx = 0;
    ty = 1000;
  }  
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }
  
  void display() {
    stroke(0);
    ellipse(x,y,32,32);
  }
}