Spaceship ship;
Star[] stars;

void setup() {
  size(600, 600);

  ship = new Spaceship();

  stars = new Star[100];

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);

  
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  
  ship.show();
  ship.move();
}

void keyPressed() {

  if (keyCode == LEFT) {
    ship.turn(-5);
  }

  if (keyCode == RIGHT) {
    ship.turn(5);
  }

  if (keyCode == UP) {
    ship.accelerate(0.2);
  }

  if (key == ' ') {
    ship.hyperspace();
  }
}
