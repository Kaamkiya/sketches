PVector p1, p2, p3, a, b;

void setup() {
  size(400, 400);
  background(220);
  
  p1 = new PVector(width / 2, height * 0.25 - 20);
  p2 = new PVector(0, height - 20);
  p3 = new PVector(width, height - 20);
  
  a = new PVector(width / 2, height / 2);
  
  frameRate(1000); // It's very, very slow at the default frame rate.
}

void draw() {
  int pt = floor(random(3));
  
  if (pt == 0) {
      b = new PVector(lerp(a.x, p1.x, 0.5), lerp(a.y, p1.y, 0.5));
    } else if (pt == 1) {
      b = new PVector(lerp(a.x, p2.x, 0.5), lerp(a.y, p2.y, 0.5));
    } else {
      b = new PVector(lerp(a.x, p3.x, 0.5), lerp(a.y, p3.y, 0.5));
    }
  
  point(b.x, b.y);
  a = b;
}
