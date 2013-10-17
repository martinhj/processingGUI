//multiwindow code found at:
//http://forum.processing.org/topic/multiple-windows-2-4-2011

import java.awt.Frame;

HScrollbar hs1, hs2;
NewScrollbar ns1, ns2;

void setup() {
 size(320, 240);
 hs1 = new HScrollbar(0, height/2-8, width, 16, 16);
 hs2 = new HScrollbar(0, height/2+8, width, 16, 16);
 ns1 = new NewScrollbar(40, 40, 200, 20);
 ns2 = new NewScrollbar(40, 70, 200, 20);
 }

void draw() {
    background(0);
   fill(255);
   //rect(10,10,frameCount%100,10);
  
   //hs1.update();
   //hs2.update();
   //hs1.display();
   //hs2.display();
   ns1.display();
   ns2.display();
   //s.fill(100);
   //s.rect(10,20,frameCount%120,10);
   //s.redraw();
}
