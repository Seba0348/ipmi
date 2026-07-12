PImage img;            //https://youtu.be/JK8snVXc-tQ?si=MkyJ7tZyIR2XGgJh
int paso = 16;
int estado = 0;
void setup() {
  size(800, 400);
  img = loadImage("referencia.jpg");
}
void draw() {
  background(84,18,245);
  fill(89, 59, 167);
  rect(600, 200, 95, 95);
  fill(206, 65, 8);
  rect(400, 0, 400, 400);
  image(img, 0, 0, 400, 400);
  pushMatrix();
  translate(400, 0);
  for(int i = 0; i < 400; i +=paso){
    for(int j = 0; j < 400; j +=paso){
      float d=dist(i, j, mouseX-400, mouseY);
      if(d > 120){
        d = 120;
      }
      float tam = paso*0.75;
      tam+=map(d, 0, 120, 6, 0);
      float x = i;
      float y = j;
      if(mousePressed){
        float deformacion = calcularDeformacion(d);
        x +=sin(j*0.1)*deformacion;
        y +=sin(i*0.1)*deformacion;
      }
      if(estado==1){
        x +=random(-2, 2);
        y +=random(-2, 2);
      }
      if(estado== 2){
        x +=random(-5, 5);
        y +=random(-5, 5);
      }
     dibujar(x, y, tam, obtenerColor(i, j));
    }
  }
  popMatrix();
}
void mouseClicked(){
  if(estado < 2){
    estado++;
  }
}
void keyPressed(){
  if(key=='r' || key=='R'){
    estado = 0;
  }
}
