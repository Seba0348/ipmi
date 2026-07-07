void boton(){
  float d = dist(mouseX, mouseY, width/2, height/2);
  if (d < radio){
    tint(255, 180, 180, transparencia);
  }else{
    tint(255, transparencia);
  }
  image(boton, 260, 180, radio*2, radio*2);
  if(d < radio && mousePressed){
    desvanecer = 1;
  }
}
void boton2(){
            float d =dist(mouseX, mouseY, x, 100);
    if(d < radio){
      tint(255, 180, 180);
    }else{
      tint(255);
    }
    image(boton, 260, 50, radio *2, radio *2);
       if(mousePressed && d < radio){
         pantalla = 0;
         gokuX = 400;
         gokuY = 60;
         mover = 0;
         tiempo2 = 0; 
         desvanecer = 0;
         transparencia = 255;
         noFill();
         
}
}
