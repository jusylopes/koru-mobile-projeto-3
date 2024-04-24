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

  void termometroDoHumor(Humor humor) {
    switch (humor) {
      case Humor.felicidade:
        print('Felicidade é sinônimo de produto Boti novo, hein $nome?!');
        break;
      case Humor.tristeza:
        print('Se mantenha firme, $nome');
        break;
      case Humor.raiva:
        print('Calma, $nome, nossa promoção retornará amanhã!');
        break;
      case Humor.nojo:
        print('O que houve $nome?');
        break;
      case Humor.ansiedade:
        print('Se acalme e respire um pouco, $nome...');
        break;
      case Humor.medo:
        print('Fique tranquilo $nome, temos produto em estoque!');
        break;
      case Humor.alegria:
        print('Nós da Boti ficamos alegres por você, $nome!');
        break;
      default:
        print('Nos conte como se sente $nome :)');
        break;
    }
  }
}
