void dibujar(float x, float y, float tam, color c){
  noStroke();
  fill(c);
  pushMatrix();
  translate(x, y);
  if(estado > 0){
    rotate(sin((x + y)*0.01)*0.3);
  }
  if(x > 130 && x < 270 && y > 130 && y < 270){
    rectMode(CENTER);
    rect(0, 0, tam, tam);
  }else{
    ellipse(0, 0, tam, tam);
  }
  popMatrix();
}
color obtenerColor(float x, float y){
  color fondo=color(170, 160, 245);
  color azul=color(80, 100, 220);
  color azulOscuro=color(45, 55, 150);
  color violeta=color(90, 70, 140);
  color verde=color(85, 110, 70);
  color centro=color(200, 255, 80);
  float dx=abs(x -290);
  float dy=abs(y -280);
  float nivel=max(dx, dy);
  if(nivel > 175){
    return fondo;
  }else if(nivel > 140){
    return azul;
  }else if(nivel > 130){
    return azulOscuro;
  }else if(nivel > 120){
    return violeta;
  }else if(nivel > 35){
    return verde;
  }else{
    return centro;
  }
}
float calcularDeformacion(float d){
  float deformacion=map(d, 0, 150, 2, 0);
  return deformacion;
}
