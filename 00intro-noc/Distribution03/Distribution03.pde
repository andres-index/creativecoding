import java.util.*;
Random generator;
int splatter, count;

void setup() {
  size(800,800);
  ellipseMode(CENTER);
  
  generator = new Random();
  
  splatter = 200;
  count = 0;
}

void draw() {
  if(count < splatter) {
    float num = (float) generator.nextGaussian();
    float rNum = (float) generator.nextGaussian();
    float gNum = (float) generator.nextGaussian();
    float bNum = (float) generator.nextGaussian();
    
    //mean and standard deviation for splatter dot distance
    float dMean = height/2;
    float dSd = 200;

    //mean and standard deviation for splatter dot size
    float sMean = 40;
    float sSd = 20;
    
    float d = dSd * sqrt(sq(num)) + dMean;
    float s = sSd * (sqrt(sq(num))*-1) + sMean;
    float r = sqrt(sq(rNum * 255));
    float g = sqrt(sq(gNum * 255));
    float b = sqrt(sq(bNum * 255));
    
    println(d);
    
    noStroke();
    fill(r,g,b);
    ellipse(width/2,d,s,s);
    
    count++;
  }
}