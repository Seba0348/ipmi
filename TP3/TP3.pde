PImage imagen;       //https://youtu.be

int paso = 16;

boolean activar = false;
float fuerza = 0;

float[][] posX;
float[][] posY;

void setup() {

  size(800, 400);

  imagen = loadImage("referencia.jpg");

  posX = new float[400][400];
  posY = new float[400][400];

  for (int i = 0; i < 400; i += paso) {

    for (int j = 0; j < 400; j += paso) {

      posX[i][j] = i;
      posY[i][j] = j;
    }
  }
}

void draw() {

  background(84, 18, 245);
  noStroke();
  fill(89, 59, 167);
  rect(600, 200, 95, 95);
  fill(206, 65, 8);
  rect(400, 0, 400, 400);
  image(imagen, 0, 0, 400, 400);

  pushMatrix();
  translate(400, 0);

  for (int i = 0; i < 400; i += paso) {

    for (int j = 0; j < 400; j += paso) {

      color tono = obtenerColor(i, j);

      float distancia = dist(i, j, mouseX - 400, mouseY);

      float tam = paso * 0.75;
      tam += map(constrain(distancia, 0, 120), 0, 120, 6, 0);

      if (mousePressed) {

        float deformacion = calcularDeformacion(distancia);

        posX[i][j] += sin(j * 0.1) * deformacion;
        posY[i][j] += sin(i * 0.1) * deformacion;
      }

      float x = posX[i][j];
      float y = posY[i][j];

      if (activar) {

        x += random(-fuerza, fuerza);
        y += random(-fuerza, fuerza);
      }

      dibujar(x, y, tam, tono);
    }
  }

  popMatrix();
}

void mouseClicked() {

  activar = !activar;

  fuerza = random(1, 4);
}

void keyPressed() {

  if (key == 'r' || key == 'R') {

    activar = false;
    fuerza = 0;

    for (int i = 0; i < 400; i += paso) {

      for (int j = 0; j < 400; j += paso) {

        posX[i][j] = i;
        posY[i][j] = j;
      }
    }
  }
}
