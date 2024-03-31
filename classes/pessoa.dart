class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  late final int idade;

  Pessoa(
      {required this.dataDeNascimento, required this.nome, required this.cpf}) {
    idade = _calcularIdade();
  }

  int _calcularIdade() {
    DateTime dataAtual = DateTime.now();
    int idade = dataAtual.year - dataDeNascimento.year;

    if ((dataAtual.month < dataDeNascimento.month) ||
        (dataAtual.month == dataDeNascimento.month &&
            dataAtual.day < dataDeNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void falar(String falaDaPessoa) {
    print('$nome diz: $falaDaPessoa');
  }

  void maiorIdade() {
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }
}
