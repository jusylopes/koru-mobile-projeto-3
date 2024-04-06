class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida;
  Produto({required this.nome, required this.valor, required this.qtdEmEstoque})
      : qtdVendida = 0;

  bool realizarVenda() {
    if (qtdEmEstoque >= 1) {
      _atualizarEstoque();
      print("Compra de um(a) produto $nome realizada com sucesso!");
      return true;
    } else {
      print('No momento não possuímos o produto $nome em estoque.');
      return false;
    }
  }

  double verReceitaGerada() {
    return valor * qtdVendida;
  }

  void _atualizarEstoque() {
    qtdVendida++;
    qtdEmEstoque--;
  }
}
