class Dot {
  PVector pos;
  PVector vel;
  float radius;
  
  Dot(PVector pos, PVector vel, float radius) {
    this.pos = pos;
    this.vel = vel;
    this.radius = radius;
  }
}

Dot[] dots = new Dot[44];

void setup() {
  size(400, 400);

  for (int i = 0; i < dots.length; i++) {
    PVector pos = new PVector(floor(random(30, 370)), floor(random(30, 370)));
    PVector vel = new PVector();
    vel.x = floor(random(1, 5));
    vel.y = floor(random(1, 5));
    if (floor(random(2)) == 0) {
      vel.x *= -1;
    }
    
    dots[i] = new Dot(pos, vel, random(10, 13));
  }
  
  fill(255);
  strokeWeight(2);
  stroke(0);
}

void draw() {
  background(0);
  
  for (Dot dot : dots) {
    circle(dot.pos.x, dot.pos.y, dot.radius);
    
    dot.pos.add(dot.vel);
    
    if (dot.pos.x > width || dot.pos.x < 0) {
      dot.vel.x *= -1;
    }
    if (dot.pos.y > width || dot.pos.y < 0) {
      dot.vel.y *= -1;
    }
  }
}
