Disco[] discos = new Disco[5]; // Array para armazenar os 5 discos


void setup() {
  size(600, 600);
  background(#0311FF);

  // Inicializa os discos na primeira torre
  for (int i = 0; i < discos.length; i++) {
    discos[i] = new Disco(0, i);
  }
}

void draw() {
  background(#FFFFFF);
  
  // Desenha as torres
  fill(#6A4242);
  rect(width/6, height/3, width/60, height);
  rect(width/2, height/3, width/60, height);
  rect(width-100, height/3, width/60, height);

    fill(#000000);
    rect(0, 580, 600, 590);
  
  // Desenha todos os discos
  for (Disco d : discos) {
    d.desenhaDisco();
  }
}    
