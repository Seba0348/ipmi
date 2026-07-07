int pantalla = 0; PFont fuente3;
PFont fuente; int mover = 0;
int tiempo2 = 0; int y = 350;
int x = 320; int radio = 60;
int textoX = 30; int transparencia = 255;
int desvanecer = 0; int gokuX = 400;
int gokuY = 60;
PImage boton; PImage goku;
PImage fondo; PImage fondo0;
PImage fondo2; PImage gokussj1;
PImage fondo3; PImage gokussj2;
PImage fondo4; PImage gokussj3;
PImage fondo5; PImage gokussj4;
PImage adios;

void setup(){
  size(640, 480);
  fuente = createFont("Comic Sans MS", 40);
  fuente3 = createFont("Ravie", 50);
  boton = loadImage("Botón.png");
  goku =loadImage("goku.png");
  gokussj1 = loadImage("gokussj.png");
  gokussj2 = loadImage("gokussj2.png");
  gokussj3 = loadImage("gokussj3.png");
  gokussj4 = loadImage("gokussj4.png");
  fondo = loadImage("fondo.png");
  fondo0 = loadImage("fondo0.png");
  fondo2 = loadImage("fondo2.png");
  fondo3 = loadImage("fondo3.png");
  fondo4 = loadImage("fondo4.png");
  fondo5 = loadImage("fondo5.png");
  adios = loadImage("adios.png");

  
  
}

void draw(){
//PANTALLA 0 (BOTON)
  if(pantalla ==0){
    if(desvanecer == 1){
      transparencia -=5;
    }
    noTint();
    image(fondo, -10, -10, 700, 520); 
    tint(255, transparencia);
    image(fondo0, 0, 0, width, height);
   fill(250, 50, 3, transparencia);
   boton();
   textFont(fuente3);
   textSize(30);
   text("click aqui para comenzar", 80, 310);
    fill(250, 66, 3, transparencia);
     textFont(fuente3);
    textSize(30);
    text("conocé las transformaciones \n                de goku", 50, 100);
    if (transparencia <0){
      pantalla = 1;
      noTint();
    }
    }  
//PANTALLA 1 (BASE)
if(pantalla ==1){
  transparencia += 10;
  tint(255, transparencia);
  image(fondo, -10, -10, 700, 520);
  image(goku, gokuX, 60, 200, 400);
  fill(255, transparencia);
  textFont(fuente);
  textSize(40);
  text("Goku base", textoX, 50);
  textSize(25);
  text("Tranquilo y muy confiado \npelea usando su experiencia y\nvelocidad sin transformarse", textoX, 100);
  tiempo2++;
  if (tiempo2 > 200){
    mover = 1;
  }
  if(mover ==1){
    gokuX+= 4;
  textoX-= 4;
  }
  if(tiempo2 > 350){
    pantalla = 2;
    gokuX = 400;
    textoX = 30;
    mover = 0;
    tiempo2 = 0;
    transparencia = 255;
  }
  //PANTALLA 2 (SSJ)
}
if(pantalla ==2){
  noTint();
  image(fondo2, -10, -10, 700, 520);
  image(gokussj1, gokuX, gokuY, 170, 400);
  fill(255, 38, 0);
  textFont(fuente);
  textSize(40);
  text("Goku ssj", textoX, 50);
  textSize(25);
  text("Su pelo se vuelve rubio y su \npoder aumenta mucho. Se \nvuelve mas serio y \nagresivo en combate", textoX, 100);
  tiempo2++;
  if (tiempo2 > 200){
    mover = 1;
  }
  if(mover ==1){
    gokuY+= 4;
  textoX-= 4;
  }
  if(tiempo2 > 350){
    pantalla = 3;
    gokuX = 400;
    textoX = 30;
    mover = 0;
    tiempo2 = 0;
    transparencia = 255;
    gokuY = 60;
  }
}
//PANTALLA 3 SSJ2)
if(pantalla ==3){
   noTint();
  image(fondo3, -10, -10, 700, 520);
  image(gokussj2, gokuX, gokuY, 200, 400);
  textFont(fuente);
  textSize(40);
  fill(255, 38, 0);
  text("Goku ssj2", textoX, 60);
  textSize(25);
  text("Una version mas fuerte y \nrapida del ssj.Tiene rayos\n al rededor del cuerpo\ny peleas mas intensas", textoX, 100);
  tiempo2++;
  if (tiempo2 > 200){
    mover = 1;
  }
  if(mover ==1){
    gokuY-= 4;
  textoX-= 4; 
}
  if(tiempo2 > 350){
    pantalla = 4;
    gokuX = 400;
    textoX = 30;
    mover = 0;
    tiempo2 = 0;
    transparencia = 255;
    gokuY = 60;
    }
}
//pantalla 5 (ssj3)  decorar no es mi fuerte ._.
if(pantalla ==4){
   noTint();
  image(fondo4, -10, -10, 700, 520);
  tint(255, transparencia);
  image(gokussj3, gokuX, gokuY, 200, 400);
  fill(219, 35, 2);
  textFont(fuente);
  textSize(40);
  text("Goku ssj3", textoX, 50);
  textSize(25);
  text("Su pelo crece muchisimo y\n pierde las cejas.\nTiene un poder enorme pero\ngasta mucha energia", textoX, 100);
  tiempo2++;
  if (tiempo2 > 200){
      transparencia -=5;
    mover = 1;
  }
  if(mover ==1){
  textoX-= 5; 
}
  if(tiempo2 > 350){
    pantalla = 5;
    gokuX = 400;
    textoX = 30;
    mover = 0;
    tiempo2 = 0;
    transparencia = 255;
    }
}
//pantalla 6 (ssj4)
if(pantalla ==5){
   noTint();
  image(fondo5, -10, -10, 700, 520);
  tint(255, transparencia);
  image(gokussj4, gokuX, gokuY, 200, 400);
  fill(255, 5, 51);
  textFont(fuente);
  textSize(40);
  text("Goku ssj4", textoX, 50);
  textSize(25);
  text("Mezcla el poder saiyajin con\n un aspecto mas salvaje.\nTiene pelo negro y largo,\n pelaje rojo y mucha\nfuerza fisica", textoX, 100);
  tiempo2++;
  if (tiempo2 > 200){
      transparencia -=5;
    mover = 1;
  }
  if(mover ==1){
  textoX-= 5; 
}
  if(tiempo2 > 350){
    pantalla = 6;
    gokuX = 400;
    textoX = 30;
    mover = 0;
    tiempo2 = 0;
    transparencia = 255;
    }
}
//pantalla final (reinicio)
if(pantalla ==6){
  noTint();
  image(adios,  0, -10, 700, 520);
  textSize(40);
  text("¡Haz click para reiniciar!", 120, 240);
boton2();
}
}
