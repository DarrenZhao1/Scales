
void setup() {
  size(495, 515);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {

  background(214, 137, 127);
  scale(0, 0);
}
void scale(int x, int y) {
  for (int i = 29; i < 400; i+=20){
    for (int b = 24; b < 400; b+=20){
      noStroke();
      fill(46+i, 40, 75);
      ellipse (i * 2 - 50, b * 2 - 50 , 39, 45);
      fill(43+i, 40, 20);
      rect(0 + i*2 - 42, 10 + b*2 - 80, 25, 15);
    }
  }
}
