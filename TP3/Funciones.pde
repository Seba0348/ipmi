void dibujar(float x, float y, float tam, color c) {

  noStroke();
  fill(c);

  pushMatrix();

  translate(x, y);

  if (activar) {
    rotate(sin((x + y) * 0.01) * 0.3);
  }

  if (x > 130 && x < 270 && y > 130 && y < 270) {

    rectMode(CENTER);
    rect(0, 0, tam, tam);

  } else {

    ellipse(0, 0, tam, tam);
  }

  popMatrix();
}

color obtenerColor(float x, float y) {

  color F = color(170, 160, 245); // lila
  color A = color(80, 100, 220);  // azul
  color B = color(45, 55, 150);   // azul oscuro
  color V = color(90, 70, 140);   // violeta oscuro
  color G = color(85, 110, 70);   // verde oscuro
  color T = color(200, 255, 80);  // verde lima

float dx = abs(x - 290);
float dy = abs(y - 280);

float nivel = max(dx, dy);

if (nivel > 175) {
  return F;
} else if (nivel > 140) {
  return A;
} else if (nivel > 130) {
  return B;
} else if (nivel > 120) {
  return V;
} else if (nivel > 35) {
  return G;
} else {
  return T;
}
}


float calcularDeformacion(float distancia) {

  float deformacion = map(distancia, 0, 150, 2, 0);

  deformacion = constrain(deformacion, 0, 2);

  return deformacion;
}
