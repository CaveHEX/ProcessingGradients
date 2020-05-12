Palette palette;

void setup() {
  size(1800, 400, P3D);
  frameRate(60);

  palette = new Palette();
}

void draw() {
  background(0);

  noStroke();
  int step = 5;
  for ( int i = 0; i < width; i += step ) {
    fill(palette.col(map(i, 0, width, 0.0, 1.0)));
    rect(i, 0, step, height);
  }
  
  fill(0);
  text("r to generate, s to save", 15, 15);
}
