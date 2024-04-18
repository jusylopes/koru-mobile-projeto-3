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
      ),
      Revendedor(
        nome: 'Maria Vasconcelos',
        cpf: '345.678.901.23',
        dataDeNascimento: DateTime.parse('1990-03-17'),
        matricula: '406215',
        genero: Genero.Feminino,
      ),
      Revendedor(
        nome: 'Manuel Oliveira',
        cpf: '890.123.456.78',
        dataDeNascimento: DateTime.parse('1987-06-22'),
        matricula: '324518',
        genero: Genero.Masculino,
      ),
      Revendedor(
        nome: 'Lisandra Alves',
        cpf: '567.890.123.45',
        dataDeNascimento: DateTime.parse('1992-08-05'),
        matricula: '172208',
        genero: Genero.Outro,
      )
    ];
  }
}
