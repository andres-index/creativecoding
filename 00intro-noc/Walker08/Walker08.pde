Walker w1,w2,w3,w4,w5,w6;
color value;

void setup() {
  size(800,800);
  background(0);
  
  w1 = new Walker(color(200,0,134,70), 100, 0);
  w2 = new Walker(color(156,0,164,70), 200, 30);
  w3 = new Walker(color(200,0,20,70), 1000, 300);
  w4 = new Walker(color(200,0,168,70), 0, 200);
  w5 = new Walker(color(230,62,141,70), 10, 1000);
  w6 = new Walker(color(234,0,255,70), 400, 20);
}

void draw() {
  w1.step();
  w1.display();
  w2.step();
  w2.display();
  w3.step();
  w3.display();
  w4.step();
  w4.display();
  w5.step();
  w5.display();
  w6.step();
  w6.display();
}