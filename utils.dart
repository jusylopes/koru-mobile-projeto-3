void pularLinha() {
  print('\n');
}

void imprimirNomeClasse(String nomeClasse) {
  print('| Testes de saída da classe $nomeClasse |');
  print('');
}

void imprimirNomeQtdProduto(String nomeProduto, int qtdEmEstoque) {
  print('');
  print('| $nomeProduto | Quantidade em estoque: $qtdEmEstoque');
}

void imprimirReceitaGerada(double receitaGerada) {
  print(
      "A receita gerada com a venda do produto é de ${receitaGerada.toStringAsFixed(2)} reais.");
}

void inserirSeparador() {
  print('+---------------------------------------------+');
}
