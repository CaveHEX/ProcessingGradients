Palette palette;

void setup () {
  size(1500, 400, P3D);
  frameRate(60);
  colorMode(HSB, 360, 100, 100);
  sphereDetail(20);
  
  // Loading a known palette from "data/palette/"
  palette = new Palette("palette_2");
}

void draw() {
  background(0);

  pushMatrix();
  translate(width * 0.5, height * 0.5, 200);

  int nb = 100;
  for ( int i = 0; i < nb; ++i ) {
    int step = 6;
    float offset = frameCount*0.01 * i * 0.1;
    float radius = map(i, 0, nb, 300, 200);
    float size = map(i, 0, nb, 100, 20);
    float depth = i * -40;
    
    // Using palette here
    color col = palette.col(map(i, 0, nb, 0, 1));
    
    orbiters(step, offset, radius, size, depth, col);
  }
  popMatrix();
  
  fill(255);
  text("r to generate ", 15, 15);
}

void mousePressed() {
  screenshot();
}

void keyPressed() {
  if ( key == 'r' ) {
    palette.generateRandom(); // Generate a different gradient on the fly
  }
}
