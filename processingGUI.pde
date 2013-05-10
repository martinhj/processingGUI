//multiwindow code found at:
//http://forum.processing.org/topic/multiple-windows-2-4-2011

import java.awt.Frame;

PFrame f;
secondApplet s;
HScrollbar hs1, hs2;
NewScrollbar ns1;

void setup() {
 size(320, 240);
 f = new PFrame();
 hs1 = new HScrollbar(0, height/2-8, width, 16, 16);
 hs2 = new HScrollbar(0, height/2+8, width, 16, 16);
 ns1 = new NewScrollbar();
}

void draw() {
  background(255,0,0);
   fill(255);
   rect(10,10,frameCount%100,10);
   s.background(0, 0, 255);
   hs1.update();
   hs2.update();
   hs1.display();
   hs2.display();
   //s.fill(100);
   //s.rect(10,20,frameCount%120,10);
   //s.redraw();
}

public class PFrame extends Frame {
    public PFrame() {
        setBounds(100,100,400,300);
        s = new secondApplet();
        add(s);
        s.init();
        show();
    }
}

public class secondApplet extends PApplet {
    public void setup() {
        size(400, 300);
        noLoop();
    }

    public void draw() {
    }
}
