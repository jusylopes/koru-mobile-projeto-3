import 'dart:io';
import '../classes/cliente.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/mock_cliente.dart';
import '../utils/mock_revendedor.dart';

Cliente inserirDadosCliente() {
  List<Cliente> clientesLista = MockCliente.mockCliente();

  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;
  print('Digite seu CPF:');
  String cpf = stdin.readLineSync()!;
  print('Digite sua data de nascimento (dessa forma: YYYY-MM-DD):');
  DateTime dataNascimento = DateTime.parse(stdin.readLineSync()!);
  Genero genero = selecionarGeneroNoMenu();

  Cliente cliente = Cliente(
      nome: nome, cpf: cpf, dataDeNascimento: dataNascimento, genero: genero);
  clientesLista.add(cliente);

  return cliente;
}

Revendedor inserirDadosRevendedor() {
  List<Revendedor> revendedores = MockRevendedor.mockRevendedor();

  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;
  print('Digite seu CPF:');
  String cpf = stdin.readLineSync()!;
  print('Digite sua data de nascimento (dessa forma: YYYY-MM-DD):');
  DateTime dataNascimento = DateTime.parse(stdin.readLineSync()!);
  Genero genero = selecionarGeneroNoMenu();
  print('Digite sua matricula:');
  String matricula = stdin.readLineSync()!;

  Revendedor revendedor = Revendedor(
    nome: nome,
    cpf: cpf,
    dataDeNascimento: dataNascimento,
    genero: genero,
    matricula: matricula,
  );
  revendedores.add(revendedor);

  return revendedor;
}

Genero selecionarGeneroNoMenu() {
  print('Escolha o gênero:');
  print('1 - Feminino');
  print('2 - Masculino');
  print('3 - Outro');

  String? input;
  Genero? genero;

  while (genero == null) {
    input = stdin.readLineSync();
    switch (input) {
      case '1':
        genero = Genero.Feminino;
        break;
      case '2':
        genero = Genero.Masculino;
        break;
      case '3':
        genero = Genero.Outro;
        break;
      default:
        print('Opção inválida. Tente novamente.');
        return selecionarGeneroNoMenu();
    }
  }

  return genero;
}

void imprimirOpcaoInvalida() {
  print('Opção inválida. Por favor, escolha uma opção válida.');
}

void imprimirUsuarioNaoAdicionado(Usuario tipoUsuario) {
  print(
      'Usuário não adicionado. Por favor, adicione um ${tipoUsuario == Usuario.revendedor ? 'revendedor' : 'cliente'} primeiro.');
}
