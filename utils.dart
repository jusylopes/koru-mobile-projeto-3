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

void inserirSeparador() {
  print('+---------------------------------------------+');
}

void imprimirReceitaProduto(double valorDaReceita, String nomeProduto) {
  print(
      'A receita gerada pelas vendas de $nomeProduto é de ${valorDaReceita.toStringAsFixed(2)} reais');
}
