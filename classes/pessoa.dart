class Pessoa {
  final String nome;
  final String cpf;
  final DateTime _dataDeNascimento;
  late final int _idade;

  Pessoa(
      {required DateTime dataDeNascimento,
      required this.nome,
      required this.cpf})
      : _dataDeNascimento = dataDeNascimento {
    _idade = _calcularIdade();
  }

  DateTime get dataDeNascimento => _dataDeNascimento;
  int get idade => _idade;

  int _calcularIdade() {
    DateTime dataAtual = DateTime.now();
    int idade = dataAtual.year - _dataDeNascimento.year;

    if ((dataAtual.month < _dataDeNascimento.month) ||
        (dataAtual.month == _dataDeNascimento.month &&
            dataAtual.day < _dataDeNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void falar(String falaDaPessoa) {
    print('$nome diz: $falaDaPessoa');
  }
}
