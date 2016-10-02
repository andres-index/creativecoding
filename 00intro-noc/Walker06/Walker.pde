class Walker {
  
  int x,y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }  
  
  void step() {
    
    float stepsize = 10 * montecarlo();
    
    float stepX = random(-stepsize,stepsize);
    float stepY = random(-stepsize,stepsize);
    
    x += stepX;
    y += stepY;
    
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  float montecarlo() {
    while(true) {
      float r1 = random(1);
      float r2 = random(1);
      float p = sq(r1);
    
      if(r2 < p) {
        return r1;
      }
    }
  }
}