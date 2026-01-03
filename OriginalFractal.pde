void setup() {
  size(1000, 1000);
}

void draw() {
  fractal(width/2, height/2, 500);
}

public void fractal(int x, int y, int size) {
  if(size <= 20) {
    ellipse(x, y, size, size);
  } else {
    fractal(x, y, size/2);
    fractal(x+size/4, y, size/2);
    fractal(x-size/4, y, size/2);
    fractal(x, y+size/4, size/2);
    fractal(x, y-size/4, size/2);
    fractal(x+size/4, y+size/4, size/4);
    fractal(x-size/4, y+size/4, size/4);
    fractal(x+size/4, y-size/4, size/4);
    fractal(x-size/4, y-size/4, size/4);
  }
}
