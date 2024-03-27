class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida;
  Produto({required this.nome, required this.valor, required this.qtdEmEstoque})
      : qtdVendida = 0;
      
  double verReceitaGerada() {
    return valor * qtdVendida;
  }
}
