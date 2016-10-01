class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void step() {
    int choice = int(random(4));
    if(choice == 0) {
      x++;
    } else if (choice == 1) {
      y--;
    } else if (choice == 2) {
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