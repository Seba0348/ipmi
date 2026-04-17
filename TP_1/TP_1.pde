PImage miImagen;
void setup(){
  size(800, 400);
  miImagen = loadImage("tp1.png");
}

void draw(){
   background(#9DBEFF);
   //montañas
   noStroke();
   fill(#5d5935);
   ellipse(401, 361, 292, 126);
   ellipse(748, 359, 242, 101);
   //muralla
   fill(#714b23);
   noStroke();
   rect(0, 327, 800, 83);
   fill(#814c14);
   noStroke();
   rect(0, 327, 800, 23);
   //arbol
   stroke(#814c14);
   line(772, 327, 758, 188);
   fill(#5e6034);
   noStroke();
   ellipse(764, 275, 11, 13);
   ellipse(765, 211, 11, 13);
   ellipse(781, 293, 11, 13);
   ellipse(756, 260, 11, 13);
   ellipse(741, 230, 11, 13);
   ellipse(757, 248, 11, 13);
   //pelo
    noStroke();
   fill(#9e794f);
   ellipse(640, 182, 89, 200);
   ellipse(580, 174, 110, 180);
   ellipse(607, 107, 110, 70);
   //cuello y cara
   fill(#d3bb97);
   beginShape();
   vertex(600, 164);
   vertex(606, 294);
   vertex(510, 248);
   endShape(CLOSE);
   ellipse(631, 262, 26, 40);
   rect(575, 200, 60, 77);
   ellipse(608, 155, 105, 130);
   //ojos ¿?
   stroke(#5f382a);
   line(642, 136, 636, 140);
   line(636, 140, 629, 140);
   line(629, 140, 621, 137);
   line(586, 140, 582, 144);
   line(582, 144, 575, 145);
   line(575, 145, 566, 141);
   //nariz
   stroke(#5f382a);
   line(597, 167, 602, 168);
   line(602, 168, 606, 171);
   line(606, 171, 610, 170);
   line(610, 170, 613, 168);
   line(613, 168, 619, 167);
   line(619, 167, 619, 161);
   line(619, 161, 614, 159);
   //boca
   stroke(#71332a);
   line(623, 181, 617, 183);
   line(617, 183, 614, 183);
   line(614, 183, 608, 185);
   line(608, 185, 603, 183);
   line(603, 183, 594, 183);
   noStroke();
   fill(#811e10);
   ellipse(614, 182, 11, 4);
   ellipse(604, 182, 11, 4);
   beginShape();
   vertex(609, 182);
   vertex(621, 183);
   vertex(616, 188);
   vertex(603, 188);
   vertex(598, 184);
   endShape(CLOSE);
   //ropa
     fill(120, 30, 30);
   beginShape();
   vertex(511, 239);
   vertex(541, 242);
   vertex(609, 277);
   vertex(641, 268);
   vertex(636, 244);
   vertex(680, 272);
   vertex(741, 400);
   vertex(417, 400);
   vertex(434, 334);
   vertex(472, 260);
   endShape(CLOSE);  
  image(miImagen,0, 0, 400, 400);
  
}
