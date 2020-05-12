void orbiters(int step, float offset_angle, float radius, float size, float depth, color col) {
  float slice = TWO_PI / step;
  for ( int i = 0; i < step; ++i ) {
    float angle = offset_angle + i * slice;
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    pushMatrix();
    translate(x, y, depth);
    noStroke();
    fill(col);
    sphere(size);
    popMatrix();
  }
}

void screenshot() {
  String str = "img/";
  int r = round(random(1000, 9999));
  str += str(r);
  str += ".png";
  save(str);
}
