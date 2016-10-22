
class Walker {
  
  color stroke;
  float s1,s2,prevX,prevY,x,y,t1,t2;
  
  Walker(color tempStroke, float tempT1, float tempT2) { 
    stroke = tempStroke;
    t1 = tempT1;
    t2 = tempT2;
    x = width/2;
    y = height/2;
  }  
  
  void step() {
    prevX = x;
    prevY = y;
    
    s1 = map(noise(t1),0,1,0,15);
    int r1 = int(random(-2,2));
    
    if(r1 < 0) {
      x = prevX - s1;
    } else if (r1 > 0) {
      x = prevX + s1;
    } else {
      x = prevX;
    }
    
    s2 = map(noise(t2),0,1,0,15);
    int r2 = int(random(-2,2));
    
    if(r2 < 0) {
      y = prevY - s2;
    } else if (r2 > 0) {
      y = prevY + s2;
    } else {
      y = prevY;
    }
    
    t1 += 0.01;
    t2 += 0.01;
  }
  
  void display() {
    stroke(stroke);
    line(prevX,prevY,x,y);
  }
}