import '../classes/cliente.dart';
import 'enums.dart';

class MockCliente {
  static List<Cliente> mockCliente() {
    return [
      Cliente(
        nome: 'Lucas Vasconcellos',
        cpf: '000.123.456.777',
        dataDeNascimento: DateTime.parse('1992-02-21'),
        genero: Genero.Outro,
      ),
      Cliente(
        nome: 'Andrea Lima',
        cpf: '444.789.012.34',
        dataDeNascimento: DateTime.parse('1982-10-21'),
        genero: Genero.Feminino,
      )
    ];
  }
}
