class Walker {

  int x, y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void step() {
    float prob = .75; //75% possibility that the "Walker" will follow the mouse
    
    if(mouseX > x) {
      if(random(1) < prob) {
        x++;
      } else {
        x--;
      }
    } else {
      if(random(1) < prob) {
        x--;
      } else {
        x++;
      }
    }
    
    if(mouseY > y) {
      if(random(1) < prob) {
        y++;
      } else {
        y--;
      }
    } else {
      if(random(1) < prob) {
        y--;
      } else {
        y++;
      }
    }
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
}