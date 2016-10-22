class Walker {

  int x, y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void step() {
    int choicex = int(random(10));
    int choicey = int(random(10));
    
    if(choicex < 7) {
      x++;
    } else {
      x--;
    }
    
    if(choicey < 7) {
      y++;
    } else {
      y--;
    }
      
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
}