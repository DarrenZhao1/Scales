int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

void setup() {
  size(495, 515);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  int p = (int) (Math.random()*4);
  System.out.println (p);
  if (p == 1){
  c1 = color (204, 0, 51);
  c2 = color (51, 156, 204);
}
  if (p == 0){
  c1 = color (232, 179, 110);
  c2 = color (101, 65, 175);
  }
    if (p == 2){
  c1 = color (245, 128, 37);
  c2 = color (245, 224, 80);
  }
     if (p == 3){
  c1 = color (232, 6, 203);
  c2 = color (67, 28, 83);
  }
  }

void draw() {
    // Background
  //setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  //setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  setGradient(0, 0, 495, 515, c1, c2, Y_AXIS);
  setGradient(0, 0, 495, 515, c2, c1, X_AXIS);
  scale(0, 0);
}
void scale(int x, int y) {
  for (int i = 29; i < 400; i+=20){
    for (int b = 24; b < 400; b+=20){
      noStroke();
      fill(255);
      ellipse (i * 2 - 50, b * 2 - 50 , 39, 45);
      fill(255);
      rect(0 + i*2 - 42, 10 + b*2 - 80, 25, 15);
    }
  }
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
   for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
 //else 
  
  /*if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
*/}
