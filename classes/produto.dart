class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida;
  Produto({required this.nome, required this.valor, required this.qtdEmEstoque})
      : qtdVendida = 0;

  void realizarVenda() {
    if (qtdEmEstoque >= qtdVendida) {
      qtdVendida++;
      qtdEmEstoque--;
      print(
          "Compra de um(a) produto $Produto realizada com sucesso!");
    } else {
      print(
          'No momento não possuímos o produto $Produto em estoque.');
    }
      
  double verReceitaGerada() {
    return valor * qtdVendida;
develop
  }
}
