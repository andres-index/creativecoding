PFont font;

Walker w;
int max = 6000;
int count = 0;

void setup() {
  size(800,800);
  background(255);
  
  font = loadFont("Times-Bold-100.vlw");
  textFont(font);
  textSize(128);
  textAlign(CENTER);
  
  w = new Walker();
}

void draw() {
  if(count < max) {
    fill(255);
    if(count < (max*.95)) {
      w.step();
      w.display();
      fill(0);
      text("magixpells",400,400);
    } else {
      w.step();
      w.display();
    }
 } else if (count == max) {
   textSize(48);
   fill(0);
   text("season 1 episode 1",400,480);
 }
count++;

}