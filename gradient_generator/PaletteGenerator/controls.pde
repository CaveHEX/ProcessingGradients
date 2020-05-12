// Controls

final int MODE_AMP = 0;
final int MODE_OFFSET = 1;
final int MODE_EX = 2;

int mode = MODE_OFFSET;

float step_amp = 20;
float step_offset = PI/10;
float step_ex = 0.1;

void keyPressed() {
  if ( key == 's' ) {
    String file_name = "palette_" + str(round(random(1000, 9999)));

    palette.savePalette(file_name);
  }

  if ( key == 'l' ) {
    palette.loadPalette("palette_1.plt");
  }

  if ( key == 'r' ) {
    palette.generateRandom();
  }
  
  if ( key == 'b' ) {
    palette.blackAndWhite();
  }  

  //Change mode
  if ( key == '1' ) {
    mode = MODE_AMP;
  }
  if ( key == '2' ) {
    mode = MODE_OFFSET;
  }
  if ( key == '3' ) {
    mode = MODE_EX;
  }

  modifyColorEx(palette.r, ((key == '7')?1:0)+((key == '4')?-1:0));
  modifyColorEx(palette.g, ((key == '8')?1:0)+((key == '5')?-1:0));
  modifyColorEx(palette.b, ((key == '9')?1:0)+((key == '6')?-1:0));
}

void modifyColorEx(ColorEx col, float ex) {
  switch ( mode ) {
  case MODE_AMP:
    col.amp += step_amp * ex;
    constrain(col.amp, 0, 255);
    break;
  case MODE_OFFSET:
    col.offset += step_offset * ex;
    constrain(col.offset, 0, TWO_PI);
    break;
  case MODE_EX:
    col.ex += step_ex * ex;
    constrain(col.ex, 0.01, 10.0);
    break;
  }
}
