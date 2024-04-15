import '../classes/revendedor.dart';
import 'enums.dart';

class MockRevendedor {
  static List<Revendedor> mockRevendedor() {
    return [
      Revendedor(
        nome: 'Eduardo Almeida',
        cpf: '000.123.456.789',
        dataDeNascimento: DateTime.parse('1992-02-21'),
        matricula: '508726',
        genero: Genero.Outro,
      ),
      Revendedor(
        nome: 'Angelina Nascimento',
        cpf: '456.789.012.34',
        dataDeNascimento: DateTime.parse('1982-10-21'),
        matricula: '505744',
        genero: Genero.Feminino,
      )
    ];
  }
}
