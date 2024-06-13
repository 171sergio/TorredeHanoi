class Disco {
  float largura;
  color cor;
  float altura = 20; // Altura padrão para todos os discos
  int posicaoTorre; // Qual torre o disco está (0, 1 ou 2)
  int ordem; // Ordem do disco na torre (de baixo para cima)

  // Construtor
  Disco(int posicaoTorre, int ordem) {
    this.posicaoTorre = posicaoTorre;
    this.ordem = ordem;
    this.largura = random(80, 160); // Largura aleatória entre 80 e 160
    this.cor = color(random(255), random(255), random(255)); // Cor aleatória
  }

  // Método para desenhar o disco
  void desenhaDisco() {
    float[] torresX = {width / 6, width / 2, width - 100}; // Posições X das torres
    float x = torresX[posicaoTorre] + width / 120; // Posição X da torre ajustada
    float y = height - (ordem + 1) * altura; // Posição Y baseada na ordem

    fill(cor);
    rect(x - largura / 2, y - altura, largura, altura);
  }
}
