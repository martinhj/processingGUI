//multiwindow code found at:
//http://forum.processing.org/topic/multiple-windows-2-4-2011

import java.awt.Frame;

PFrame f;
secondApplet s;

void setup() {
 size(320, 240);
 f = new PFrame();
}

void draw() {
  background(255,0,0);
   fill(255);
   rect(10,10,frameCount%100,10);
   s.background(0, 0, 255);
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
