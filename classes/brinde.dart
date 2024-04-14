class Brinde {
  final String nomeBrinde;
  final int pontosNecessarios;
  int qtdEmEstoque;

  Brinde(
      {required this.nomeBrinde,
      required this.pontosNecessarios,
      required this.qtdEmEstoque});

  void consultarPontosNecessarios() {
    print(
        'Para ganhar um(a) $nomeBrinde você precisa de $pontosNecessarios pontos.');
  }
}
