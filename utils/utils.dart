void pularLinha() {
  print('\n');
}

void imprimirNomeClasse(String nomeClasse) {
  imprimirMensagemComMoldura('| Testes de saída da classe $nomeClasse |');
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
  imprimirMensagemComMoldura(
      '|Receita gerada pelas vendas de $nomeProduto | ${valorDaReceita.toStringAsFixed(2)} reais');
}

void imprimirMensagemComMoldura(String mensagem) {
  final larguraMoldura = mensagem.length + 4;
  final linhaMoldura = '+' + '-'.padRight(larguraMoldura - 2, '-') + '+';
  final mensagemComEspacos =
      '| ' + mensagem.padRight(larguraMoldura - 4) + ' |';

  print(linhaMoldura);
  print(mensagemComEspacos);
  print(linhaMoldura);
}

void imprimirEstrelasDoClubeASCII() {
  final estrelasEmASCII = '''
:･ﾟ✧:･.☽｡･ﾟ✧:･:･ﾟ✧:･.☽｡･ﾟ✧:･:･ﾟ✧:･
  ''';
  print(estrelasEmASCII);
}

void imprimirLogoASCII() {
  final logoBotiEmASCII = '''
             @@@@@@@@@@                                            @@                               
  @@@@@@@    @@@     @@@   @@@@@@@@ @@@@@@@@@@@ @@@   @@@@@@@     @@@     @@@@@@@@   @@@   @@@@@@@  
@@@    @@@   @@@    @@@@  @@@    @@@    @@@     @@@ @@@@    @@   @@@@@    @@@   @@@  @@@  @@@    @@@
@@@     @@@  @@@@@@@@@@@ @@@      @@@   @@@     @@@ @@@          @@@@@    @@@@@@@@@  @@@ @@@     @@@
@@@     @@@  @@@     @@@ @@@      @@@   @@@     @@@ @@@         @@@@@@@   @@@@@@@@   @@@ @@@     @@@
@@@    @@@   @@@     @@@  @@@    @@@    @@@     @@@ @@@@    @@ @@    @@@  @@@   @@@  @@@  @@@    @@@
  @@@@@@@    @@@@@@@@@@    @@@@@@@@     @@@     @@@  @@@@@@@@ @@@     @@@ @@@   @@@@ @@@   @@@@@@@  
''';

  print(logoBotiEmASCII);
}
