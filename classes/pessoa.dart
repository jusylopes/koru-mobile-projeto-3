import '../utils/enums.dart';

class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  late final int _idade;
  final Genero genero;

  Pessoa(
      {required this.dataDeNascimento,
      required this.nome,
      required this.cpf,
      required this.genero}) {
    _idade = _calcularIdade();
  }

  int get idade => _idade;

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
    if (_idade >= 18) {
      print('$nome tem $_idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $_idade anos, portanto é menor de idade.');
    }
  }
}
