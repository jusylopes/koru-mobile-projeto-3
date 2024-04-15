class Brinde {
  final String nomeBrinde;
  final int pontosNecessarios;
  int _qtdEmEstoque;

  Brinde(
      {required this.nomeBrinde,
      required this.pontosNecessarios,
      required int qtdEmEstoque})
      : _qtdEmEstoque = qtdEmEstoque;

  int get qtdEmEstoque => _qtdEmEstoque;

  void consultarPontosNecessarios() {
    print(
        'Para ganhar um(a) $nomeBrinde você precisa de $pontosNecessarios pontos.');
  }

  void realizarTroca() {
    if (_qtdEmEstoque > 0) {
      _qtdEmEstoque--;
      print('Troca realizada! Você ganhou um(a) $nomeBrinde.');
    } else {
      throw 'No momento não possuímos o produto $nomeBrinde em estoque.';
    }
  }
}
