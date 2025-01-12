PVector[] dots = new PVector[20];
int i = 0;

void setup() {
  size(400, 360);
  
  for (i = 0; i < 20; i++) {
    dots[i] = new PVector(i * 20, floor(random(30, 330)));
  }
  i = 0;
}

void draw() {
  background(0);
  stroke(167);
  strokeWeight(1);
  for (int j = 0; j < 20; j++) {
    line(j * 20, 0, j * 20, 360);
  }
  
  fill(167);
  for (PVector dot : dots) {
    circle(dot.x, dot.y, 7);
  }
  
  PVector curDot = dots[i];
  PVector nextDot;
  if (i + 1 >= dots.length) {
    nextDot = dots[0];
  } else {
    nextDot = dots[i + 1];
  }
  
  if (curDot.y == nextDot.y) {
    i++;
  } else {
    if (nextDot.y > curDot.y) {
      curDot.y++;
    } else {
      curDot.y--;
    }
  }
  
  if (i == dots.length) {
    i = 0;
  }
}
