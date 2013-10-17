class NewScrollbar {
  int sheight, swidth;
  int wpos, hpos;

  NewScrollbar(int wpos, int hpos, int sw, int sh) {
    sheight = sh;
    swidth = sw;
    this.wpos = wpos;
    this.hpos = hpos;
  }
  void display() {
    stroke(255);
    fill(255);
    rect(wpos, hpos, swidth, sheight);
    fill(51, 204, 102);
    stroke(51, 204, 102);
    rect(wpos, hpos, swidth / 2 * (sin(millis() / 1000) + 1), sheight);
  }
}

